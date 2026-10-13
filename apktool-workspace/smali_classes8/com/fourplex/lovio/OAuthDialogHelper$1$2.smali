.class Lcom/fourplex/lovio/OAuthDialogHelper$1$2;
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


# direct methods
.method constructor <init>(Lcom/fourplex/lovio/OAuthDialogHelper$1;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/fourplex/lovio/OAuthDialogHelper$1$2;->this$0:Lcom/fourplex/lovio/OAuthDialogHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 82
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 83
    iget-object p1, p0, Lcom/fourplex/lovio/OAuthDialogHelper$1$2;->this$0:Lcom/fourplex/lovio/OAuthDialogHelper$1;

    iget-object p1, p1, Lcom/fourplex/lovio/OAuthDialogHelper$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/fourplex/lovio/OAuthDialogHelper$1$2;->this$0:Lcom/fourplex/lovio/OAuthDialogHelper$1;

    iget-object p1, p1, Lcom/fourplex/lovio/OAuthDialogHelper$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string p2, "12501"

    const-string v0, "Sign in cancelled"

    invoke-interface {p1, p2, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method
