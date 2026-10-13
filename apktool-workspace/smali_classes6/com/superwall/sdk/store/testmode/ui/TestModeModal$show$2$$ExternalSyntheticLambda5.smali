.class public final synthetic Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/superwall/sdk/misc/IOScope;

.field public final synthetic f$1:Lkotlinx/coroutines/CompletableDeferred;


# direct methods
.method public synthetic constructor <init>(Lcom/superwall/sdk/misc/IOScope;Lkotlinx/coroutines/CompletableDeferred;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$$ExternalSyntheticLambda5;->f$0:Lcom/superwall/sdk/misc/IOScope;

    iput-object p2, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$$ExternalSyntheticLambda5;->f$1:Lkotlinx/coroutines/CompletableDeferred;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$$ExternalSyntheticLambda5;->f$0:Lcom/superwall/sdk/misc/IOScope;

    iget-object v1, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2$$ExternalSyntheticLambda5;->f$1:Lkotlinx/coroutines/CompletableDeferred;

    invoke-static {v0, v1, p1}, Lcom/superwall/sdk/store/testmode/ui/TestModeModal$show$2;->$r8$lambda$jE1Luyx1T9cI1ZCXv6-lQ3B9GXQ(Lcom/superwall/sdk/misc/IOScope;Lkotlinx/coroutines/CompletableDeferred;Landroid/content/DialogInterface;)V

    return-void
.end method
