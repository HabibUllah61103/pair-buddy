.class public final synthetic Lcom/superwall/sdk/storage/core_data/CoreDataManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lcom/superwall/sdk/storage/core_data/CoreDataManager;->$r8$lambda$40eHySzxMfcGd1dmVCx-Y5HKITI(Landroid/content/Context;)Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;

    move-result-object v0

    return-object v0
.end method
