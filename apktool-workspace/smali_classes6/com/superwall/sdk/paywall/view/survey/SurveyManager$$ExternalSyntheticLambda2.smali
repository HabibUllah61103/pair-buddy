.class public final synthetic Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcom/superwall/sdk/config/models/Survey;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

.field public final synthetic f$4:Lcom/superwall/sdk/dependencies/TriggerFactory;

.field public final synthetic f$5:Lcom/superwall/sdk/paywall/view/PaywallView;

.field public final synthetic f$6:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(ZLcom/superwall/sdk/config/models/Survey;ILcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/dependencies/TriggerFactory;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda2;->f$0:Z

    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda2;->f$1:Lcom/superwall/sdk/config/models/Survey;

    iput p3, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda2;->f$2:I

    iput-object p4, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda2;->f$3:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    iput-object p5, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda2;->f$4:Lcom/superwall/sdk/dependencies/TriggerFactory;

    iput-object p6, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda2;->f$5:Lcom/superwall/sdk/paywall/view/PaywallView;

    iput-object p7, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda2;->f$6:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 8

    .line 0
    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda2;->f$0:Z

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda2;->f$1:Lcom/superwall/sdk/config/models/Survey;

    iget v2, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda2;->f$2:I

    iget-object v3, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda2;->f$3:Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    iget-object v4, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda2;->f$4:Lcom/superwall/sdk/dependencies/TriggerFactory;

    iget-object v5, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda2;->f$5:Lcom/superwall/sdk/paywall/view/PaywallView;

    iget-object v6, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda2;->f$6:Lkotlin/jvm/functions/Function1;

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/paywall/view/survey/SurveyManager;->$r8$lambda$dtTEteS1ZiGolvG-ZJUcpD3FF0k(ZLcom/superwall/sdk/config/models/Survey;ILcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/dependencies/TriggerFactory;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;)V

    return-void
.end method
