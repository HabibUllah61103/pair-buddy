.class public final synthetic Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcom/superwall/sdk/config/models/Survey;

.field public final synthetic f$2:Lcom/superwall/sdk/config/models/SurveyOption;

.field public final synthetic f$3:Landroid/widget/EditText;

.field public final synthetic f$4:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

.field public final synthetic f$5:Lcom/superwall/sdk/dependencies/TriggerFactory;

.field public final synthetic f$6:Lcom/superwall/sdk/paywall/view/PaywallView;

.field public final synthetic f$7:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$8:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(ZLcom/superwall/sdk/config/models/Survey;Lcom/superwall/sdk/config/models/SurveyOption;Landroid/widget/EditText;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/dependencies/TriggerFactory;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/jvm/functions/Function1;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda0;->f$1:Lcom/superwall/sdk/config/models/Survey;

    iput-object p3, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda0;->f$2:Lcom/superwall/sdk/config/models/SurveyOption;

    iput-object p4, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda0;->f$3:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda0;->f$4:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    iput-object p6, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda0;->f$5:Lcom/superwall/sdk/dependencies/TriggerFactory;

    iput-object p7, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda0;->f$6:Lcom/superwall/sdk/paywall/view/PaywallView;

    iput-object p8, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda0;->f$7:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda0;->f$8:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 0
    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda0;->f$0:Z

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda0;->f$1:Lcom/superwall/sdk/config/models/Survey;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda0;->f$2:Lcom/superwall/sdk/config/models/SurveyOption;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda0;->f$3:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda0;->f$4:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    iget-object v5, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda0;->f$5:Lcom/superwall/sdk/dependencies/TriggerFactory;

    iget-object v6, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda0;->f$6:Lcom/superwall/sdk/paywall/view/PaywallView;

    iget-object v7, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda0;->f$7:Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda0;->f$8:Landroidx/appcompat/app/AlertDialog;

    move-object v9, p1

    invoke-static/range {v0 .. v9}, Lcom/superwall/sdk/paywall/view/survey/SurveyManager;->$r8$lambda$j_21LLjkFeBBNHPKZqk28BRvhHo(ZLcom/superwall/sdk/config/models/Survey;Lcom/superwall/sdk/config/models/SurveyOption;Landroid/widget/EditText;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/dependencies/TriggerFactory;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/jvm/functions/Function1;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
