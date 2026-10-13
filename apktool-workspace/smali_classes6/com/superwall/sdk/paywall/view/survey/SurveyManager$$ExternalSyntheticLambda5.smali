.class public final synthetic Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda5;->f$0:Landroidx/appcompat/app/AlertDialog;

    iput-object p2, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda5;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda5;->f$0:Landroidx/appcompat/app/AlertDialog;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/survey/SurveyManager$$ExternalSyntheticLambda5;->f$1:Landroid/widget/EditText;

    invoke-static {v0, v1, p1}, Lcom/superwall/sdk/paywall/view/survey/SurveyManager;->$r8$lambda$cKHNYlw_tE7rF8ZZQeu-c3Hc2N0(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    return-void
.end method
