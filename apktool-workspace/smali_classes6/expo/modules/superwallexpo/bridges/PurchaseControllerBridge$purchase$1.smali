.class final Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$purchase$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "PurchaseControllerBridge.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;->purchase(Landroid/app/Activity;Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "expo.modules.superwallexpo.bridges.PurchaseControllerBridge"
    f = "PurchaseControllerBridge.kt"
    i = {}
    l = {
        0x31
    }
    m = "purchase"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;


# direct methods
.method constructor <init>(Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$purchase$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$purchase$1;->this$0:Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$purchase$1;->result:Ljava/lang/Object;

    iget p1, p0, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$purchase$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$purchase$1;->label:I

    iget-object v0, p0, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$purchase$1;->this$0:Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;

    const/4 v4, 0x0

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;->purchase(Landroid/app/Activity;Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
