.class final Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TestModeRestoreDrawer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer;->show(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/superwall/sdk/store/testmode/ui/RestoreSimulationResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTestModeRestoreDrawer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TestModeRestoreDrawer.kt\ncom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,89:1\n1202#2,2:90\n1230#2,4:92\n1557#2:96\n1628#2,3:97\n*S KotlinDebug\n*F\n+ 1 TestModeRestoreDrawer.kt\ncom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2\n*L\n39#1:90,2\n39#1:92,4\n72#1:96\n72#1:97,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/superwall/sdk/store/testmode/ui/RestoreSimulationResult;",
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
    c = "com.superwall.sdk.store.testmode.ui.TestModeRestoreDrawer$show$2"
    f = "TestModeRestoreDrawer.kt"
    i = {}
    l = {
        0x56
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $availableEntitlements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $currentSelections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method public static synthetic $r8$lambda$TVJt47xu8kUUPjiClv6-C2FMebg(Ljava/util/List;Lkotlinx/coroutines/CompletableDeferred;Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2;->invokeSuspend$lambda$4(Ljava/util/List;Lkotlinx/coroutines/CompletableDeferred;Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z86B91GtYdHex61ef76tBCeB4nc(Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2;->invokeSuspend$lambda$2(Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_7sjtFLIRulnRhuw7TrgXQNIlBU(Lkotlinx/coroutines/CompletableDeferred;Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2;->invokeSuspend$lambda$1(Lkotlinx/coroutines/CompletableDeferred;Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lZ2sa6PjUVcto8VhD96EYrY3kkY(Lkotlinx/coroutines/CompletableDeferred;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2;->invokeSuspend$lambda$5(Lkotlinx/coroutines/CompletableDeferred;Landroid/content/DialogInterface;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2;->$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2;->$currentSelections:Ljava/util/List;

    iput-object p3, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2;->$availableEntitlements:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$1(Lkotlinx/coroutines/CompletableDeferred;Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 0

    .line 43
    sget-object p2, Lcom/superwall/sdk/store/testmode/ui/RestoreSimulationResult$Cancelled;->INSTANCE:Lcom/superwall/sdk/store/testmode/ui/RestoreSimulationResult$Cancelled;

    invoke-interface {p0, p2}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    return-void
.end method

.method private static final invokeSuspend$lambda$2(Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;)Lkotlin/Unit;
    .locals 0

    .line 61
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokeSuspend$lambda$4(Ljava/util/List;Lkotlinx/coroutines/CompletableDeferred;Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 1

    .line 72
    check-cast p0, Ljava/lang/Iterable;

    .line 96
    new-instance p3, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p3, Ljava/util/Collection;

    .line 97
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 98
    check-cast v0, Lcom/superwall/sdk/store/testmode/ui/EntitlementRowViewHolder;

    .line 72
    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/ui/EntitlementRowViewHolder;->getCurrentSelection()Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;

    move-result-object v0

    .line 98
    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_0
    check-cast p3, Ljava/util/List;

    .line 73
    new-instance p0, Lcom/superwall/sdk/store/testmode/ui/RestoreSimulationResult$Restored;

    invoke-direct {p0, p3}, Lcom/superwall/sdk/store/testmode/ui/RestoreSimulationResult$Restored;-><init>(Ljava/util/List;)V

    invoke-interface {p1, p0}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    return-void
.end method

.method private static final invokeSuspend$lambda$5(Lkotlinx/coroutines/CompletableDeferred;Landroid/content/DialogInterface;)V
    .locals 0

    .line 79
    invoke-interface {p0}, Lkotlinx/coroutines/CompletableDeferred;->isCompleted()Z

    move-result p1

    if-nez p1, :cond_0

    .line 80
    sget-object p1, Lcom/superwall/sdk/store/testmode/ui/RestoreSimulationResult$Cancelled;->INSTANCE:Lcom/superwall/sdk/store/testmode/ui/RestoreSimulationResult$Cancelled;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    :cond_0
    return-void
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

    new-instance p1, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2;

    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2;->$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2;->$currentSelections:Ljava/util/List;

    iget-object v2, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2;->$availableEntitlements:Ljava/util/List;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/superwall/sdk/store/testmode/ui/RestoreSimulationResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 29
    iget v2, v0, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 30
    invoke-static {v2, v3, v2}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v4

    .line 32
    new-instance v5, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    iget-object v6, v0, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2;->$activity:Landroid/app/Activity;

    check-cast v6, Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    .line 33
    iget-object v6, v0, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2;->$activity:Landroid/app/Activity;

    check-cast v6, Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 34
    sget v7, Lcom/superwall/sdk/R$layout;->test_mode_restore_drawer:I

    invoke-virtual {v6, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 37
    iget-object v6, v0, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2;->$activity:Landroid/app/Activity;

    check-cast v6, Landroid/content/Context;

    sget v7, Lcom/superwall/sdk/R$drawable;->test_mode_sheet_bg:I

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 36
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 39
    iget-object v6, v0, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2;->$currentSelections:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    const/16 v7, 0xa

    .line 90
    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-static {v7}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v7

    .line 91
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v8, Ljava/util/Map;

    .line 92
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 93
    move-object v9, v7

    check-cast v9, Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;

    .line 39
    invoke-virtual {v9}, Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;->getIdentifier()Ljava/lang/String;

    move-result-object v9

    .line 93
    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 42
    :cond_2
    sget v6, Lcom/superwall/sdk/R$id;->close_button:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v7, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2$$ExternalSyntheticLambda0;

    invoke-direct {v7, v4, v5}, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/CompletableDeferred;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    sget v6, Lcom/superwall/sdk/R$id;->entitlements_container:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 49
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/List;

    .line 50
    iget-object v9, v0, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2;->$availableEntitlements:Ljava/util/List;

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 51
    iget-object v9, v0, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2;->$availableEntitlements:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v14, v10

    check-cast v14, Ljava/lang/String;

    .line 53
    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;

    if-nez v10, :cond_3

    .line 54
    new-instance v11, Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/4 v13, 0x0

    move-object v12, v14

    const/4 v14, 0x0

    invoke-direct/range {v11 .. v16}, Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;-><init>(Ljava/lang/String;Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v11

    goto :goto_2

    :cond_3
    move-object v12, v14

    move-object v15, v10

    .line 56
    :goto_2
    new-instance v11, Lcom/superwall/sdk/store/testmode/ui/EntitlementRowViewHolder;

    .line 57
    iget-object v10, v0, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2;->$activity:Landroid/app/Activity;

    check-cast v10, Landroid/content/Context;

    .line 58
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v13, v6

    check-cast v13, Landroid/view/ViewGroup;

    .line 60
    new-instance v16, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2$$ExternalSyntheticLambda1;

    invoke-direct/range {v16 .. v16}, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2$$ExternalSyntheticLambda1;-><init>()V

    move-object v14, v12

    move-object v12, v10

    .line 56
    invoke-direct/range {v11 .. v16}, Lcom/superwall/sdk/store/testmode/ui/EntitlementRowViewHolder;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;Lkotlin/jvm/functions/Function1;)V

    .line 63
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {v11}, Lcom/superwall/sdk/store/testmode/ui/EntitlementRowViewHolder;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 67
    :cond_4
    sget v6, Lcom/superwall/sdk/R$id;->no_entitlements_text:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    :cond_5
    sget v6, Lcom/superwall/sdk/R$id;->restore_button:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v8, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2$$ExternalSyntheticLambda2;

    invoke-direct {v8, v7, v4, v5}, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;Lkotlinx/coroutines/CompletableDeferred;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {v5, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 78
    new-instance v2, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2$$ExternalSyntheticLambda3;

    invoke-direct {v2, v4}, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2$$ExternalSyntheticLambda3;-><init>(Lkotlinx/coroutines/CompletableDeferred;)V

    invoke-virtual {v5, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 84
    invoke-virtual {v5}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    .line 86
    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput v3, v0, Lcom/superwall/sdk/store/testmode/ui/TestModeRestoreDrawer$show$2;->label:I

    invoke-interface {v4, v2}, Lkotlinx/coroutines/CompletableDeferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    return-object v1

    :cond_6
    return-object v2
.end method
