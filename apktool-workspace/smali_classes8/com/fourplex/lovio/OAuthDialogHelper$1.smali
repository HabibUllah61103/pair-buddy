.class Lcom/fourplex/lovio/OAuthDialogHelper$1;
.super Ljava/lang/Object;
.source "OAuthDialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fourplex/lovio/OAuthDialogHelper;->showAuthDialog(Landroid/app/Activity;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/fourplex/lovio/OAuthDialogHelper$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/fourplex/lovio/OAuthDialogHelper$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 29
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/fourplex/lovio/OAuthDialogHelper$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 30
    const-string v1, "Sign In Helper"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 31
    const-string v1, "Paste Google ID Token OR Supabase Access Token / Redirect URL:"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 33
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/fourplex/lovio/OAuthDialogHelper$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 34
    const-string v2, "Paste URL or token here..."

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 35
    const v2, 0x20001

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 36
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 37
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLines(I)V

    .line 38
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVerticalScrollBarEnabled(Z)V

    .line 40
    new-instance v2, Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/fourplex/lovio/OAuthDialogHelper$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 41
    const/16 v3, 0x10

    const/16 v4, 0x20

    invoke-virtual {v2, v4, v3, v4, v3}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 42
    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 44
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 46
    const-string v2, "Sign In"

    new-instance v3, Lcom/fourplex/lovio/OAuthDialogHelper$1$1;

    invoke-direct {v3, p0, v1}, Lcom/fourplex/lovio/OAuthDialogHelper$1$1;-><init>(Lcom/fourplex/lovio/OAuthDialogHelper$1;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    const-string v1, "Cancel"

    new-instance v2, Lcom/fourplex/lovio/OAuthDialogHelper$1$2;

    invoke-direct {v2, p0}, Lcom/fourplex/lovio/OAuthDialogHelper$1$2;-><init>(Lcom/fourplex/lovio/OAuthDialogHelper$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    iget-object v0, p0, Lcom/fourplex/lovio/OAuthDialogHelper$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/fourplex/lovio/OAuthDialogHelper$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v1, "12501"

    const-string v2, "Sign in exception"

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    :goto_0
    return-void
.end method
