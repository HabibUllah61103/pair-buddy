.class public final synthetic Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/superwall/sdk/config/models/Survey;

.field public final synthetic f$1:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Landroid/app/Activity;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$5:Z

.field public final synthetic f$6:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

.field public final synthetic f$7:Lcom/superwall/sdk/dependencies/TriggerFactory;

.field public final synthetic f$8:Lcom/superwall/sdk/paywall/view/PaywallView;


# direct methods
.method public synthetic constructor <init>(Lcom/superwall/sdk/config/models/Survey;Lcom/google/android/material/bottomsheet/BottomSheetDialog;Ljava/util/List;Landroid/app/Activity;Lkotlin/jvm/functions/Function1;ZLcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/dependencies/TriggerFactory;Lcom/superwall/sdk/paywall/view/PaywallView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda1;->f$0:Lcom/superwall/sdk/config/models/Survey;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    iput-object p3, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda1;->f$3:Landroid/app/Activity;

    iput-object p5, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda1;->f$4:Lkotlin/jvm/functions/Function1;

    iput-boolean p6, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda1;->f$5:Z

    iput-object p7, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda1;->f$6:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    iput-object p8, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda1;->f$7:Lcom/superwall/sdk/dependencies/TriggerFactory;

    iput-object p9, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda1;->f$8:Lcom/superwall/sdk/paywall/view/PaywallView;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 14

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda1;->f$0:Lcom/superwall/sdk/config/models/Survey;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda1;->f$3:Landroid/app/Activity;

    iget-object v4, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda1;->f$4:Lkotlin/jvm/functions/Function1;

    iget-boolean v5, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda1;->f$5:Z

    iget-object v6, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda1;->f$6:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    iget-object v7, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda1;->f$7:Lcom/superwall/sdk/dependencies/TriggerFactory;

    iget-object v8, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda1;->f$8:Lcom/superwall/sdk/paywall/view/PaywallView;

    move-object v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move-wide/from16 v12, p4

    invoke-static/range {v0 .. v13}, Lcom/superwall/sdk/paywall/view/survey/SurveyManager;->$r8$lambda$WxbyPAyWI6bJEiUgtNhQ-uczkgE(Lcom/superwall/sdk/config/models/Survey;Lcom/google/android/material/bottomsheet/BottomSheetDialog;Ljava/util/List;Landroid/app/Activity;Lkotlin/jvm/functions/Function1;ZLcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/dependencies/TriggerFactory;Lcom/superwall/sdk/paywall/view/PaywallView;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
