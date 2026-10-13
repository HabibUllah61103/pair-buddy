.class public final synthetic Lcom/reactcommunity/rndatetimepicker/Common$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(ZLandroid/app/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/reactcommunity/rndatetimepicker/Common$$ExternalSyntheticLambda2;->f$0:Z

    iput-object p2, p0, Lcom/reactcommunity/rndatetimepicker/Common$$ExternalSyntheticLambda2;->f$1:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .line 0
    iget-boolean v0, p0, Lcom/reactcommunity/rndatetimepicker/Common$$ExternalSyntheticLambda2;->f$0:Z

    iget-object v1, p0, Lcom/reactcommunity/rndatetimepicker/Common$$ExternalSyntheticLambda2;->f$1:Landroid/app/AlertDialog;

    invoke-static {v0, v1, p1}, Lcom/reactcommunity/rndatetimepicker/Common;->lambda$openYearDialog$1(ZLandroid/app/AlertDialog;Landroid/content/DialogInterface;)V

    return-void
.end method
