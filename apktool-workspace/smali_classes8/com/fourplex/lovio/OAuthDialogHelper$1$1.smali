.class Lcom/fourplex/lovio/OAuthDialogHelper$1$1;
.super Ljava/lang/Object;
.source "OAuthDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fourplex/lovio/OAuthDialogHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fourplex/lovio/OAuthDialogHelper$1;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/fourplex/lovio/OAuthDialogHelper$1;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/fourplex/lovio/OAuthDialogHelper$1$1;->this$0:Lcom/fourplex/lovio/OAuthDialogHelper$1;

    iput-object p2, p0, Lcom/fourplex/lovio/OAuthDialogHelper$1$1;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 49
    iget-object p1, p0, Lcom/fourplex/lovio/OAuthDialogHelper$1$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 51
    nop

    .line 52
    const-string p2, "access_token="

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "&"

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0xd

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 55
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 57
    :cond_0
    const-string p2, "id_token="

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x9

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 60
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 64
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/fourplex/lovio/OAuthDialogHelper;->-$$Nest$smisSupabaseJwt(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 66
    iget-object p2, p0, Lcom/fourplex/lovio/OAuthDialogHelper$1$1;->this$0:Lcom/fourplex/lovio/OAuthDialogHelper$1;

    iget-object p2, p2, Lcom/fourplex/lovio/OAuthDialogHelper$1;->val$activity:Landroid/app/Activity;

    invoke-static {p2, p1}, Lcom/fourplex/lovio/OAuthDialogHelper;->-$$Nest$smsaveSupabaseSessionToDb(Landroid/app/Activity;Ljava/lang/String;)V

    .line 67
    iget-object p2, p0, Lcom/fourplex/lovio/OAuthDialogHelper$1$1;->this$0:Lcom/fourplex/lovio/OAuthDialogHelper$1;

    iget-object p2, p2, Lcom/fourplex/lovio/OAuthDialogHelper$1;->val$activity:Landroid/app/Activity;

    const-string v0, "Supabase session saved! Please restart app."

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 70
    :cond_2
    iget-object p2, p0, Lcom/fourplex/lovio/OAuthDialogHelper$1$1;->this$0:Lcom/fourplex/lovio/OAuthDialogHelper$1;

    iget-object p2, p2, Lcom/fourplex/lovio/OAuthDialogHelper$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-static {p1, p2}, Lcom/fourplex/lovio/OAuthDialogHelper;->-$$Nest$smresolveWithIdToken(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    iget-object p1, p0, Lcom/fourplex/lovio/OAuthDialogHelper$1$1;->this$0:Lcom/fourplex/lovio/OAuthDialogHelper$1;

    iget-object p1, p1, Lcom/fourplex/lovio/OAuthDialogHelper$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    if-eqz p1, :cond_4

    .line 73
    iget-object p1, p0, Lcom/fourplex/lovio/OAuthDialogHelper$1$1;->this$0:Lcom/fourplex/lovio/OAuthDialogHelper$1;

    iget-object p1, p1, Lcom/fourplex/lovio/OAuthDialogHelper$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string p2, "12501"

    const-string v0, "Sign in cancelled"

    invoke-interface {p1, p2, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_4
    :goto_1
    return-void
.end method
