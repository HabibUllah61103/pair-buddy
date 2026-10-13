.class final Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TestModeModal.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/store/testmode/ui/TestModeModal;->show(Landroid/app/Activity;Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/storage/TestModeSettings;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTestModeModal.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TestModeModal.kt\ncom/superwall/sdk/store/testmode/ui/TestModeModal$show$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,206:1\n1202#2,2:207\n1230#2,4:209\n1557#2:213\n1628#2,3:214\n1557#2:217\n1628#2,3:218\n*S KotlinDebug\n*F\n+ 1 TestModeModal.kt\ncom/superwall/sdk/store/testmode/ui/TestModeModal$show$2\n*L\n66#1:207,2\n66#1:209,4\n118#1:213\n118#1:214,3\n166#1:217\n166#1:218,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;",
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
    c = "com.superwall.sdk.store.testmode.ui.TestModeModal$show$2"
    f = "TestModeModal.kt"
    i = {}
    l = {
        0xbf
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $apiKey:Ljava/lang/String;

.field final synthetic $availableEntitlements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $dashboardBaseUrl:Ljava/lang/String;

.field final synthetic $hasPurchaseController:Z

.field final synthetic $reason:Ljava/lang/String;

.field final synthetic $savedSettings:Lcom/superwall/sdk/storage/TestModeSettings;

.field final synthetic $userAttributes:Ljava/lang/String;

.field final synthetic $userId:Ljava/lang/String;

.field label:I


# direct methods
.method public static synthetic $r8$lambda$1EcE7daOwnpYIKJbfp9v6out8dQ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->invokeSuspend$lambda$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AcZFh3L-7BBH9VEC0MRDEyAdOZk(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->invokeSuspend$lambda$3(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aqyk6p6uleaYdIh4dSQ-p196OTs(Ljava/util/List;Lkotlinx/coroutines/CompletableDeferred;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->invokeSuspend$lambda$7(Ljava/util/List;Lkotlinx/coroutines/CompletableDeferred;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iNS6lJGZnbD0PiRFtQgJiDQzQCE(Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->invokeSuspend$lambda$5(Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jE1Luyx1T9cI1ZCXv6-lQ3B9GXQ(Lcom/superwall/sdk/misc/IOScope;Lkotlinx/coroutines/CompletableDeferred;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->invokeSuspend$lambda$8(Lcom/superwall/sdk/misc/IOScope;Lkotlinx/coroutines/CompletableDeferred;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l9vQ5Q-3E1ginq-yf-QfNgdweU4(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->invokeSuspend$lambda$1(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/superwall/sdk/storage/TestModeSettings;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/superwall/sdk/storage/TestModeSettings;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$savedSettings:Lcom/superwall/sdk/storage/TestModeSettings;

    iput-object p3, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$reason:Ljava/lang/String;

    iput-object p4, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$userId:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$hasPurchaseController:Z

    iput-object p6, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$availableEntitlements:Ljava/util/List;

    iput-object p7, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$dashboardBaseUrl:Ljava/lang/String;

    iput-object p8, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$apiKey:Ljava/lang/String;

    iput-object p9, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$userAttributes:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$1(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .line 78
    sget-object p2, Lcom/superwall/sdk/store/testmode/ui/TestModeModal;->INSTANCE:Lcom/superwall/sdk/store/testmode/ui/TestModeModal;

    check-cast p0, Landroid/content/Context;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v0, "User ID"

    invoke-static {p2, p0, v0, p1}, Lcom/superwall/sdk/store/testmode/ui/TestModeModal;->access$copyToClipboard(Lcom/superwall/sdk/store/testmode/ui/TestModeModal;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 83
    move-object p4, p0

    check-cast p4, Ljava/lang/CharSequence;

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-lez p4, :cond_1

    move-object p4, p1

    check-cast p4, Ljava/lang/CharSequence;

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-lez p4, :cond_1

    move-object p4, p2

    check-cast p4, Ljava/lang/CharSequence;

    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-nez p4, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p4, "/sdk-link/applications/"

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "/users/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 86
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p3, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 89
    :catch_0
    check-cast p3, Landroid/content/Context;

    const-string p0, "Could not open browser"

    check-cast p0, Ljava/lang/CharSequence;

    const/4 p1, 0x0

    invoke-static {p3, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 90
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final invokeSuspend$lambda$3(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .line 108
    sget-object p2, Lcom/superwall/sdk/store/testmode/ui/TestModeAttributesViewer;->INSTANCE:Lcom/superwall/sdk/store/testmode/ui/TestModeAttributesViewer;

    check-cast p0, Landroid/content/Context;

    const-string v0, "User Attributes"

    invoke-virtual {p2, p0, v0, p1}, Lcom/superwall/sdk/store/testmode/ui/TestModeAttributesViewer;->show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$5(Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;)Lkotlin/Unit;
    .locals 0

    .line 157
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokeSuspend$lambda$7(Ljava/util/List;Lkotlinx/coroutines/CompletableDeferred;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 1

    .line 166
    check-cast p0, Ljava/lang/Iterable;

    .line 217
    new-instance p4, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p4, Ljava/util/Collection;

    .line 218
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 219
    check-cast v0, Lcom/superwall/sdk/store/testmode/ui/EntitlementRowViewHolder;

    .line 166
    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/ui/EntitlementRowViewHolder;->getCurrentSelection()Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;

    move-result-object v0

    .line 219
    invoke-interface {p4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    :cond_0
    check-cast p4, Ljava/util/List;

    .line 168
    new-instance p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;

    .line 170
    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    .line 168
    invoke-direct {p0, p4, p2}, Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;-><init>(Ljava/util/List;Lcom/superwall/sdk/store/testmode/FreeTrialOverride;)V

    .line 167
    invoke-interface {p1, p0}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {p3}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    return-void
.end method

.method private static final invokeSuspend$lambda$8(Lcom/superwall/sdk/misc/IOScope;Lkotlinx/coroutines/CompletableDeferred;Landroid/content/DialogInterface;)V
    .locals 1

    .line 178
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p2, v0, p2}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 179
    invoke-interface {p1}, Lkotlinx/coroutines/CompletableDeferred;->isCompleted()Z

    move-result p0

    if-nez p0, :cond_0

    .line 181
    new-instance p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;

    .line 182
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 183
    sget-object v0, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->UseDefault:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    .line 181
    invoke-direct {p0, p2, v0}, Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;-><init>(Ljava/util/List;Lcom/superwall/sdk/store/testmode/FreeTrialOverride;)V

    .line 180
    invoke-interface {p1, p0}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11
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

    new-instance v0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;

    iget-object v1, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$savedSettings:Lcom/superwall/sdk/storage/TestModeSettings;

    iget-object v3, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$reason:Ljava/lang/String;

    iget-object v4, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$userId:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$hasPurchaseController:Z

    iget-object v6, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$availableEntitlements:Ljava/util/List;

    iget-object v7, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$dashboardBaseUrl:Ljava/lang/String;

    iget-object v8, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$apiKey:Ljava/lang/String;

    iget-object v9, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$userAttributes:Ljava/lang/String;

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;-><init>(Landroid/app/Activity;Lcom/superwall/sdk/storage/TestModeSettings;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 52
    iget v2, v0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->label:I

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

    .line 53
    invoke-static {v2, v3, v2}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v4

    .line 54
    new-instance v5, Lcom/superwall/sdk/misc/IOScope;

    invoke-direct {v5, v2, v3, v2}, Lcom/superwall/sdk/misc/IOScope;-><init>(Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 56
    new-instance v6, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    iget-object v7, v0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$activity:Landroid/app/Activity;

    check-cast v7, Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    .line 57
    invoke-virtual {v6, v7}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCancelable(Z)V

    .line 59
    iget-object v8, v0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$activity:Landroid/app/Activity;

    check-cast v8, Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 60
    sget v9, Lcom/superwall/sdk/R$layout;->test_mode_modal:I

    invoke-virtual {v8, v9, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 63
    iget-object v9, v0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$activity:Landroid/app/Activity;

    check-cast v9, Landroid/content/Context;

    sget v10, Lcom/superwall/sdk/R$drawable;->test_mode_sheet_bg:I

    invoke-static {v9, v10}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 66
    iget-object v9, v0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$savedSettings:Lcom/superwall/sdk/storage/TestModeSettings;

    const/16 v10, 0xa

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/superwall/sdk/storage/TestModeSettings;->getEntitlementSelections()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_2

    check-cast v9, Ljava/lang/Iterable;

    .line 207
    invoke-static {v9, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-static {v11}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v11

    const/16 v12, 0x10

    invoke-static {v11, v12}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v11

    .line 208
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12, v11}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v12, Ljava/util/Map;

    .line 209
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 210
    move-object v13, v11

    check-cast v13, Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;

    .line 66
    invoke-virtual {v13}, Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;->getIdentifier()Ljava/lang/String;

    move-result-object v13

    .line 210
    invoke-interface {v12, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 66
    :cond_2
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v12

    .line 68
    :cond_3
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v11, v0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$savedSettings:Lcom/superwall/sdk/storage/TestModeSettings;

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lcom/superwall/sdk/storage/TestModeSettings;->getFreeTrialOverride()Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    move-result-object v11

    if-nez v11, :cond_5

    :cond_4
    sget-object v11, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->UseDefault:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    :cond_5
    iput-object v11, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 71
    sget v11, Lcom/superwall/sdk/R$id;->reason_text:I

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iget-object v13, v0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$reason:Ljava/lang/String;

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    sget v11, Lcom/superwall/sdk/R$id;->user_id_value:I

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iget-object v13, v0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$userId:Ljava/lang/String;

    if-eqz v13, :cond_6

    goto :goto_1

    :cond_6
    const-string v13, "(anonymous)"

    :goto_1
    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    sget v11, Lcom/superwall/sdk/R$id;->purchase_controller_value:I

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 74
    iget-boolean v13, v0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$hasPurchaseController:Z

    if-eqz v13, :cond_7

    const-string v13, "Provided"

    goto :goto_2

    :cond_7
    const-string v13, "Not provided"

    :goto_2
    check-cast v13, Ljava/lang/CharSequence;

    .line 73
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    sget v11, Lcom/superwall/sdk/R$id;->copy_user_id_button:I

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iget-object v13, v0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$activity:Landroid/app/Activity;

    iget-object v14, v0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$userId:Ljava/lang/String;

    new-instance v15, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$$ExternalSyntheticLambda0;

    invoke-direct {v15, v13, v14}, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    sget v11, Lcom/superwall/sdk/R$id;->view_dashboard_button:I

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iget-object v13, v0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$dashboardBaseUrl:Ljava/lang/String;

    iget-object v14, v0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$apiKey:Ljava/lang/String;

    iget-object v15, v0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$userId:Ljava/lang/String;

    iget-object v3, v0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$activity:Landroid/app/Activity;

    new-instance v7, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$$ExternalSyntheticLambda1;

    invoke-direct {v7, v13, v14, v15, v3}, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    move-object/from16 v16, v5

    check-cast v16, Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$3;

    iget-object v7, v0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$activity:Landroid/app/Activity;

    invoke-direct {v3, v8, v7, v2}, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$3;-><init>(Landroid/view/View;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v19, v3

    check-cast v19, Lkotlin/jvm/functions/Function2;

    const/16 v20, 0x3

    const/16 v21, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v16 .. v21}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 107
    sget v2, Lcom/superwall/sdk/R$id;->user_attributes_row:I

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$activity:Landroid/app/Activity;

    iget-object v7, v0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$userAttributes:Ljava/lang/String;

    new-instance v11, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$$ExternalSyntheticLambda2;

    invoke-direct {v11, v3, v7}, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$$ExternalSyntheticLambda2;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    sget v2, Lcom/superwall/sdk/R$id;->free_trial_spinner:I

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 113
    invoke-static {}, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 116
    iget-object v7, v0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$activity:Landroid/app/Activity;

    check-cast v7, Landroid/content/Context;

    .line 117
    sget v11, Lcom/superwall/sdk/R$layout;->test_mode_spinner_item:I

    .line 118
    move-object v13, v3

    check-cast v13, Ljava/lang/Iterable;

    .line 213
    new-instance v14, Ljava/util/ArrayList;

    invoke-static {v13, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v14, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v14, Ljava/util/Collection;

    .line 214
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 215
    check-cast v13, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    .line 118
    invoke-virtual {v13}, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->getDisplayName()Ljava/lang/String;

    move-result-object v13

    .line 215
    invoke-interface {v14, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 216
    :cond_8
    check-cast v14, Ljava/util/List;

    .line 115
    new-instance v10, Landroid/widget/ArrayAdapter;

    invoke-direct {v10, v7, v11, v14}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 120
    sget v7, Lcom/superwall/sdk/R$layout;->test_mode_spinner_dropdown_item:I

    invoke-virtual {v10, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 121
    check-cast v10, Landroid/widget/SpinnerAdapter;

    invoke-virtual {v2, v10}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 123
    iget-object v7, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {v3, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    const/4 v10, 0x0

    invoke-static {v7, v10}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v7

    .line 122
    invoke-virtual {v2, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 126
    new-instance v7, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$5;

    invoke-direct {v7, v9, v3}, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$5;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/List;)V

    check-cast v7, Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 125
    invoke-virtual {v2, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 141
    iget-object v3, v0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$availableEntitlements:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 142
    sget v3, Lcom/superwall/sdk/R$id;->entitlements_section:I

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    .line 143
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    sget v3, Lcom/superwall/sdk/R$id;->entitlements_container:I

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 147
    iget-object v7, v0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$availableEntitlements:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 149
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;

    if-nez v11, :cond_9

    .line 150
    new-instance v16, Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;

    const/16 v20, 0x6

    const/16 v21, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v10

    invoke-direct/range {v16 .. v21}, Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;-><init>(Ljava/lang/String;Lcom/superwall/sdk/store/testmode/ui/EntitlementStateOption;Lcom/superwall/sdk/store/testmode/ui/OfferTypeOption;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v20, v16

    goto :goto_5

    :cond_9
    move-object/from16 v17, v10

    move-object/from16 v20, v11

    .line 152
    :goto_5
    new-instance v16, Lcom/superwall/sdk/store/testmode/ui/EntitlementRowViewHolder;

    .line 153
    iget-object v10, v0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$activity:Landroid/app/Activity;

    check-cast v10, Landroid/content/Context;

    .line 154
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v18, v3

    check-cast v18, Landroid/view/ViewGroup;

    .line 156
    new-instance v21, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$$ExternalSyntheticLambda3;

    invoke-direct/range {v21 .. v21}, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$$ExternalSyntheticLambda3;-><init>()V

    move-object/from16 v19, v17

    move-object/from16 v17, v10

    .line 152
    invoke-direct/range {v16 .. v21}, Lcom/superwall/sdk/store/testmode/ui/EntitlementRowViewHolder;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v10, v16

    .line 159
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {v10}, Lcom/superwall/sdk/store/testmode/ui/EntitlementRowViewHolder;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 165
    :cond_a
    sget v3, Lcom/superwall/sdk/R$id;->continue_button:I

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v7, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$$ExternalSyntheticLambda4;

    invoke-direct {v7, v2, v4, v9, v6}, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;Lkotlinx/coroutines/CompletableDeferred;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    invoke-virtual {v6, v8}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 177
    new-instance v2, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$$ExternalSyntheticLambda5;

    invoke-direct {v2, v5, v4}, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$$ExternalSyntheticLambda5;-><init>(Lcom/superwall/sdk/misc/IOScope;Lkotlinx/coroutines/CompletableDeferred;)V

    invoke-virtual {v6, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 189
    invoke-virtual {v6}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    .line 191
    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x1

    iput v3, v0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->label:I

    invoke-interface {v4, v2}, Lkotlinx/coroutines/CompletableDeferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_b

    return-object v1

    :cond_b
    return-object v2
.end method
