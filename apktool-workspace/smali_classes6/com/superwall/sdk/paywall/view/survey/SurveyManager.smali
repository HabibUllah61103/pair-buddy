.class public final Lcom/superwall/sdk/paywall/view/survey/SurveyManager;
.super Ljava/lang/Object;
.source "SurveyManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/paywall/view/survey/SurveyManager$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSurveyManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SurveyManager.kt\ncom/superwall/sdk/paywall/view/survey/SurveyManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,290:1\n1#2:291\n1557#3:292\n1628#3,3:293\n*S KotlinDebug\n*F\n+ 1 SurveyManager.kt\ncom/superwall/sdk/paywall/view/survey/SurveyManager\n*L\n98#1:292\n98#1:293,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003Jr\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u00070\u001eJV\u0010 \u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010!\u001a\u00020\n2\u0006\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0011\u001a\u00020\u00122\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u00070\u001eH\u0002J(\u0010&\u001a\u0004\u0018\u00010\n2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/view/survey/SurveyManager;",
        "",
        "<init>",
        "()V",
        "otherAlertDialog",
        "Landroidx/appcompat/app/AlertDialog;",
        "presentSurveyIfAvailable",
        "",
        "surveys",
        "",
        "Lcom/superwall/sdk/config/models/Survey;",
        "paywallResult",
        "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;",
        "paywallCloseReason",
        "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;",
        "activity",
        "Landroid/app/Activity;",
        "paywallView",
        "Lcom/superwall/sdk/paywall/view/PaywallView;",
        "loadingState",
        "Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;",
        "isDebuggerLaunched",
        "",
        "paywallInfo",
        "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
        "storage",
        "Lcom/superwall/sdk/storage/LocalStorage;",
        "factory",
        "Lcom/superwall/sdk/dependencies/TriggerFactory;",
        "completion",
        "Lkotlin/Function1;",
        "Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;",
        "handleDialogDismissal",
        "survey",
        "option",
        "Lcom/superwall/sdk/config/models/SurveyOption;",
        "customResponse",
        "",
        "selectSurvey",
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
.field public static final INSTANCE:Lcom/superwall/sdk/paywall/view/survey/SurveyManager;

.field private static otherAlertDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public static synthetic $r8$lambda$LiXmYxvdnbETrz3gw8jEHXsdfY0(Landroidx/appcompat/app/AlertDialog;ZLcom/superwall/sdk/config/models/Survey;Lcom/superwall/sdk/config/models/SurveyOption;Landroid/widget/EditText;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/dependencies/TriggerFactory;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/superwall/sdk/paywall/view/survey/SurveyManager;->presentSurveyIfAvailable$lambda$10$lambda$9(Landroidx/appcompat/app/AlertDialog;ZLcom/superwall/sdk/config/models/Survey;Lcom/superwall/sdk/config/models/SurveyOption;Landroid/widget/EditText;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/dependencies/TriggerFactory;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MD2QXAR1CpSXodU_SkR-kFcyhQQ(Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/paywall/view/survey/SurveyManager;->presentSurveyIfAvailable$lambda$10$lambda$6(Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WxbyPAyWI6bJEiUgtNhQ-uczkgE(Lcom/superwall/sdk/config/models/Survey;Lcom/google/android/material/bottomsheet/BottomSheetDialog;Ljava/util/List;Landroid/app/Activity;Lkotlin/jvm/functions/Function1;ZLcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/dependencies/TriggerFactory;Lcom/superwall/sdk/paywall/view/PaywallView;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-static/range {p0 .. p13}, Lcom/superwall/sdk/paywall/view/survey/SurveyManager;->presentSurveyIfAvailable$lambda$10(Lcom/superwall/sdk/config/models/Survey;Lcom/google/android/material/bottomsheet/BottomSheetDialog;Ljava/util/List;Landroid/app/Activity;Lkotlin/jvm/functions/Function1;ZLcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/dependencies/TriggerFactory;Lcom/superwall/sdk/paywall/view/PaywallView;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$cKHNYlw_tE7rF8ZZQeu-c3Hc2N0(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/survey/SurveyManager;->presentSurveyIfAvailable$lambda$10$lambda$7(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dtTEteS1ZiGolvG-ZJUcpD3FF0k(ZLcom/superwall/sdk/config/models/Survey;ILcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/dependencies/TriggerFactory;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/superwall/sdk/paywall/view/survey/SurveyManager;->presentSurveyIfAvailable$lambda$10$lambda$4(ZLcom/superwall/sdk/config/models/Survey;ILcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/dependencies/TriggerFactory;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j_21LLjkFeBBNHPKZqk28BRvhHo(ZLcom/superwall/sdk/config/models/Survey;Lcom/superwall/sdk/config/models/SurveyOption;Landroid/widget/EditText;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/dependencies/TriggerFactory;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/jvm/functions/Function1;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/superwall/sdk/paywall/view/survey/SurveyManager;->presentSurveyIfAvailable$lambda$10$lambda$9$lambda$8(ZLcom/superwall/sdk/config/models/Survey;Lcom/superwall/sdk/config/models/SurveyOption;Landroid/widget/EditText;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/dependencies/TriggerFactory;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/jvm/functions/Function1;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pXDBn4GW5E7fkNNVkpIkFZ_LdRs(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/paywall/view/survey/SurveyManager;->presentSurveyIfAvailable$lambda$10$lambda$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager;

    invoke-direct {v0}, Lcom/superwall/sdk/paywall/view/survey/SurveyManager;-><init>()V

    sput-object v0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager;->INSTANCE:Lcom/superwall/sdk/paywall/view/survey/SurveyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final handleDialogDismissal(ZLcom/superwall/sdk/config/models/Survey;Lcom/superwall/sdk/config/models/SurveyOption;Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/dependencies/TriggerFactory;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/jvm/functions/Function1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/superwall/sdk/config/models/Survey;",
            "Lcom/superwall/sdk/config/models/SurveyOption;",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
            "Lcom/superwall/sdk/dependencies/TriggerFactory;",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 244
    sget-object p1, Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;->SHOW:Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;

    move-object/from16 v7, p8

    invoke-interface {v7, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    move-object/from16 v7, p8

    .line 248
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance v0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;

    const/4 v8, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v8}, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$handleDialogDismissal$1;-><init>(Lcom/superwall/sdk/config/models/Survey;Lcom/superwall/sdk/config/models/SurveyOption;Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/dependencies/TriggerFactory;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object p5, v0

    check-cast p5, Lkotlin/jvm/functions/Function2;

    const/4 p2, 0x3

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 v0, 0x0

    move p6, p2

    move-object/from16 p7, p3

    move-object p3, p4

    move-object p4, v0

    move-object p2, p1

    invoke-static/range {p2 .. p7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private static final presentSurveyIfAvailable$lambda$10(Lcom/superwall/sdk/config/models/Survey;Lcom/google/android/material/bottomsheet/BottomSheetDialog;Ljava/util/List;Landroid/app/Activity;Lkotlin/jvm/functions/Function1;ZLcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/dependencies/TriggerFactory;Lcom/superwall/sdk/paywall/view/PaywallView;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11

    move/from16 v3, p11

    .line 124
    invoke-virtual {p0}, Lcom/superwall/sdk/config/models/Survey;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 126
    new-instance v0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda2;

    move-object v2, p0

    move-object v7, p4

    move/from16 v1, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v7}, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda2;-><init>(ZLcom/superwall/sdk/config/models/Survey;ILcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/dependencies/TriggerFactory;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 138
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    return-void

    .line 141
    :cond_0
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 142
    const-string v0, "Other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 143
    check-cast p3, Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/superwall/sdk/R$layout;->custom_alert_dialog_layout:I

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 145
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x0

    .line 146
    invoke-virtual {v1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 147
    invoke-virtual {v1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 149
    new-instance v5, Lcom/superwall/sdk/config/models/SurveyOption;

    const-string p3, "000"

    invoke-direct {v5, p3, v0}, Lcom/superwall/sdk/config/models/SurveyOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string p3, "Submit"

    check-cast p3, Ljava/lang/CharSequence;

    new-instance v0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v1, p3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 155
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    const-string p3, "create(...)"

    invoke-static {v2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    sget p3, Lcom/superwall/sdk/R$id;->customDialogTitle:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 158
    sget v0, Lcom/superwall/sdk/R$id;->customDialogMessage:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 159
    sget v1, Lcom/superwall/sdk/R$id;->editText:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Landroid/widget/EditText;

    .line 161
    invoke-virtual {p0}, Lcom/superwall/sdk/config/models/Survey;->getTitle()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual {p0}, Lcom/superwall/sdk/config/models/Survey;->getMessage()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    new-instance p2, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$presentSurveyIfAvailable$2$3;

    invoke-direct {p2, v2}, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$presentSurveyIfAvailable$2$3;-><init>(Landroidx/appcompat/app/AlertDialog;)V

    check-cast p2, Landroid/text/TextWatcher;

    .line 164
    invoke-virtual {v6, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 188
    new-instance p2, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda4;

    invoke-direct {p2, v2}, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda4;-><init>(Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v2, p2}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 192
    new-instance p2, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda5;

    invoke-direct {p2, v2, v6}, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda5;-><init>(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 200
    new-instance v1, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda6;

    move-object v4, p0

    move-object v10, p4

    move/from16 v3, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda6;-><init>(Landroidx/appcompat/app/AlertDialog;ZLcom/superwall/sdk/config/models/Survey;Lcom/superwall/sdk/config/models/SurveyOption;Landroid/widget/EditText;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/dependencies/TriggerFactory;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 218
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    return-void

    .line 219
    :cond_1
    const-string p0, "Close"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 220
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p0

    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p0

    new-instance p2, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$presentSurveyIfAvailable$2$7;

    invoke-direct {p2, v2}, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$presentSurveyIfAvailable$2$7;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    const/4 p3, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 p5, p0

    move-object/from16 p8, p2

    move/from16 p9, p3

    move-object/from16 p10, v0

    move-object/from16 p6, v1

    move-object/from16 p7, v2

    invoke-static/range {p5 .. p10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 224
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    .line 225
    sget-object p0, Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;->SHOW:Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;

    invoke-interface {p4, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private static final presentSurveyIfAvailable$lambda$10$lambda$4(ZLcom/superwall/sdk/config/models/Survey;ILcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/dependencies/TriggerFactory;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;)V
    .locals 9

    .line 127
    sget-object v0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager;->INSTANCE:Lcom/superwall/sdk/paywall/view/survey/SurveyManager;

    .line 130
    invoke-virtual {p1}, Lcom/superwall/sdk/config/models/Survey;->getOptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/superwall/sdk/config/models/SurveyOption;

    const/4 v4, 0x0

    move v1, p0

    move-object v2, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 127
    invoke-direct/range {v0 .. v8}, Lcom/superwall/sdk/paywall/view/survey/SurveyManager;->handleDialogDismissal(ZLcom/superwall/sdk/config/models/Survey;Lcom/superwall/sdk/config/models/SurveyOption;Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/dependencies/TriggerFactory;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final presentSurveyIfAvailable$lambda$10$lambda$5(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private static final presentSurveyIfAvailable$lambda$10$lambda$6(Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, -0x1

    .line 189
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private static final presentSurveyIfAvailable$lambda$10$lambda$7(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .locals 0

    .line 193
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    const/4 p2, -0x1

    .line 194
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 197
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method private static final presentSurveyIfAvailable$lambda$10$lambda$9(Landroidx/appcompat/app/AlertDialog;ZLcom/superwall/sdk/config/models/Survey;Lcom/superwall/sdk/config/models/SurveyOption;Landroid/widget/EditText;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/dependencies/TriggerFactory;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;)V
    .locals 11

    const/4 v0, -0x1

    .line 202
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda0;

    move-object v10, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda0;-><init>(ZLcom/superwall/sdk/config/models/Survey;Lcom/superwall/sdk/config/models/SurveyOption;Landroid/widget/EditText;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/dependencies/TriggerFactory;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/jvm/functions/Function1;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final presentSurveyIfAvailable$lambda$10$lambda$9$lambda$8(ZLcom/superwall/sdk/config/models/Survey;Lcom/superwall/sdk/config/models/SurveyOption;Landroid/widget/EditText;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/dependencies/TriggerFactory;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/jvm/functions/Function1;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 9

    .line 203
    sget-object v0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager;->INSTANCE:Lcom/superwall/sdk/paywall/view/survey/SurveyManager;

    .line 207
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 203
    invoke-direct/range {v0 .. v8}, Lcom/superwall/sdk/paywall/view/survey/SurveyManager;->handleDialogDismissal(ZLcom/superwall/sdk/config/models/Survey;Lcom/superwall/sdk/config/models/SurveyOption;Ljava/lang/String;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/dependencies/TriggerFactory;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/jvm/functions/Function1;)V

    .line 213
    invoke-virtual/range {p8 .. p8}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method private final selectSurvey(Ljava/util/List;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;)Lcom/superwall/sdk/config/models/Survey;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/config/models/Survey;",
            ">;",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;",
            "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;",
            ")",
            "Lcom/superwall/sdk/config/models/Survey;"
        }
    .end annotation

    .line 277
    instance-of v0, p2, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Purchased;

    .line 278
    instance-of p2, p2, Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult$Declined;

    .line 279
    instance-of p3, p3, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$ManualClose;

    .line 281
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/superwall/sdk/config/models/Survey;

    .line 282
    invoke-virtual {v1}, Lcom/superwall/sdk/config/models/Survey;->getPresentationCondition()Lcom/superwall/sdk/config/models/SurveyShowCondition;

    move-result-object v2

    sget-object v3, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/superwall/sdk/config/models/SurveyShowCondition;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_2
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    :goto_0
    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final presentSurveyIfAvailable(Ljava/util/List;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Landroid/app/Activity;Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;ZLcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/dependencies/TriggerFactory;Lkotlin/jvm/functions/Function1;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/config/models/Survey;",
            ">;",
            "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;",
            "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;",
            "Landroid/app/Activity;",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            "Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState;",
            "Z",
            "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
            "Lcom/superwall/sdk/storage/LocalStorage;",
            "Lcom/superwall/sdk/dependencies/TriggerFactory;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p6

    move/from16 v6, p7

    move-object/from16 v1, p9

    move-object/from16 v5, p11

    const-string v2, "surveys"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "paywallResult"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "paywallCloseReason"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "paywallView"

    move-object/from16 v9, p5

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "loadingState"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "paywallInfo"

    move-object/from16 v7, p8

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "storage"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "factory"

    move-object/from16 v8, p10

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "completion"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p4, :cond_0

    .line 53
    move-object p1, p0

    check-cast p1, Lcom/superwall/sdk/paywall/view/survey/SurveyManager;

    .line 54
    sget-object p1, Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;->NOSHOW:Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;

    invoke-interface {v5, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 59
    :cond_0
    invoke-direct/range {p0 .. p3}, Lcom/superwall/sdk/paywall/view/survey/SurveyManager;->selectSurvey(Ljava/util/List;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;)Lcom/superwall/sdk/config/models/Survey;

    move-result-object p1

    if-nez p1, :cond_1

    move-object p1, p0

    check-cast p1, Lcom/superwall/sdk/paywall/view/survey/SurveyManager;

    .line 60
    sget-object p1, Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;->NOSHOW:Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;

    invoke-interface {v5, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 64
    :cond_1
    instance-of p2, v0, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$Ready;

    if-nez p2, :cond_2

    instance-of p2, v0, Lcom/superwall/sdk/paywall/view/delegate/PaywallLoadingState$LoadingPurchase;

    if-nez p2, :cond_2

    .line 65
    sget-object p1, Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;->NOSHOW:Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;

    invoke-interface {v5, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 69
    :cond_2
    invoke-virtual {p1, v1}, Lcom/superwall/sdk/config/models/Survey;->hasSeenSurvey(Lcom/superwall/sdk/storage/LocalStorage;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 70
    sget-object p1, Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;->NOSHOW:Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;

    invoke-interface {v5, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 74
    :cond_3
    invoke-virtual {p1, v6}, Lcom/superwall/sdk/config/models/Survey;->shouldAssignHoldout(Z)Z

    move-result p2

    if-nez v6, :cond_4

    .line 78
    sget-object v0, Lcom/superwall/sdk/storage/SurveyAssignmentKey;->INSTANCE:Lcom/superwall/sdk/storage/SurveyAssignmentKey;

    check-cast v0, Lcom/superwall/sdk/storage/Storable;

    invoke-virtual {p1}, Lcom/superwall/sdk/config/models/Survey;->getAssignmentKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/superwall/sdk/storage/LocalStorage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    :cond_4
    if-eqz p2, :cond_5

    .line 82
    sget-object p1, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 83
    sget-object p2, Lcom/superwall/sdk/logger/LogLevel;->info:Lcom/superwall/sdk/logger/LogLevel;

    .line 84
    sget-object v0, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    const/16 v1, 0x18

    const/4 v2, 0x0

    .line 82
    const-string v3, "The survey will not present."

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object p3, p1

    move-object p4, p2

    move-object/from16 p5, v0

    move/from16 p9, v1

    move-object/from16 p10, v2

    move-object/from16 p6, v3

    move-object/from16 p7, v4

    move-object/from16 p8, v6

    invoke-static/range {p3 .. p10}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 87
    sget-object p1, Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;->HOLDOUT:Lcom/superwall/sdk/paywall/view/survey/SurveyPresentationResult;

    invoke-interface {v5, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 91
    :cond_5
    new-instance v2, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    move-object p2, p4

    check-cast p2, Landroid/content/Context;

    invoke-direct {v2, p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 92
    invoke-virtual {v2, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    .line 93
    invoke-virtual {v2, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCancelable(Z)V

    .line 94
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/superwall/sdk/R$layout;->survey_bottom_sheet:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 95
    invoke-virtual {v2, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    .line 98
    invoke-virtual {p1}, Lcom/superwall/sdk/config/models/Survey;->getOptions()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 292
    new-instance v4, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v1, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v4, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 293
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 294
    check-cast v10, Lcom/superwall/sdk/config/models/SurveyOption;

    .line 98
    invoke-virtual {v10}, Lcom/superwall/sdk/config/models/SurveyOption;->getTitle()Ljava/lang/String;

    move-result-object v10

    .line 294
    invoke-interface {v4, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 295
    :cond_6
    check-cast v4, Ljava/util/List;

    .line 292
    check-cast v4, Ljava/util/Collection;

    .line 98
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    invoke-virtual {p1}, Lcom/superwall/sdk/config/models/Survey;->getIncludeOtherOption()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 102
    const-string v1, "Other"

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_7
    invoke-virtual {p1}, Lcom/superwall/sdk/config/models/Survey;->getIncludeCloseOption()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 105
    const-string v1, "Close"

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_8
    sget v1, Lcom/superwall/sdk/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 109
    sget v4, Lcom/superwall/sdk/R$id;->message:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 111
    invoke-virtual {p1}, Lcom/superwall/sdk/config/models/Survey;->getTitle()Ljava/lang/String;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p1}, Lcom/superwall/sdk/config/models/Survey;->getMessage()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    sget v1, Lcom/superwall/sdk/R$id;->surveyListView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v0

    check-cast v10, Landroid/widget/ListView;

    .line 116
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 118
    sget v1, Lcom/superwall/sdk/R$layout;->list_item:I

    .line 116
    invoke-direct {v0, p2, v1, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 122
    check-cast v0, Landroid/widget/ListAdapter;

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    new-instance v0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda1;

    move-object v1, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v9}, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda1;-><init>(Lcom/superwall/sdk/config/models/Survey;Lcom/google/android/material/bottomsheet/BottomSheetDialog;Ljava/util/List;Landroid/app/Activity;Lkotlin/jvm/functions/Function1;ZLcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/dependencies/TriggerFactory;Lcom/superwall/sdk/paywall/view/PaywallView;)V

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 230
    invoke-virtual {v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    return-void
.end method
