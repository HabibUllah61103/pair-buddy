.class final Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1$1;
.super Ljava/lang/Object;
.source "SuperwallExpoModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
        "Ljava/lang/Boolean;",
        ">;"
    }
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


# instance fields
.field final synthetic this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;


# direct methods
.method constructor <init>(Lexpo/modules/superwallexpo/SuperwallExpoModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1$1;->this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/lang/Boolean;
    .locals 2

    .line 167
    iget-object v0, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1$1;->this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;

    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    invoke-virtual {v0, v1}, Lexpo/modules/superwallexpo/SuperwallExpoModule;->setBackPressedPromise(Ljava/util/concurrent/CompletableFuture;)V

    if-eqz p1, :cond_0

    .line 170
    const-string v0, "paywallInfo"

    invoke-static {p1}, Lexpo/modules/superwallexpo/json/PaywallInfoKt;->toJson(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_1

    .line 171
    :cond_0
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    .line 173
    :cond_1
    sget-object v0, Lexpo/modules/superwallexpo/SuperwallExpoModule;->Companion:Lexpo/modules/superwallexpo/SuperwallExpoModule$Companion;

    const-string v1, "onBackPressed"

    invoke-virtual {v0, v1, p1}, Lexpo/modules/superwallexpo/SuperwallExpoModule$Companion;->emitEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 176
    new-instance p1, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1$1$1;

    iget-object v0, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1$1;->this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1$1$1;-><init>(Lexpo/modules/superwallexpo/SuperwallExpoModule;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x1

    invoke-static {v1, p1, v0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    check-cast p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    invoke-virtual {p0, p1}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1$1;->invoke(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
