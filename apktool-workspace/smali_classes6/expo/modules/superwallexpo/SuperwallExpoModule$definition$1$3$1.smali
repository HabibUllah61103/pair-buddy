.class final Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SuperwallExpoModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/superwallexpo/SuperwallExpoModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "expo.modules.superwallexpo.SuperwallExpoModule$definition$1$3$1"
    f = "SuperwallExpoModule.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $apiKey:Ljava/lang/String;

.field final synthetic $options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $promise:Lexpo/modules/kotlin/Promise;

.field final synthetic $sdkVersion:Ljava/lang/String;

.field final synthetic $usingPurchaseController:Ljava/lang/Boolean;

.field label:I

.field final synthetic this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;


# direct methods
.method constructor <init>(Ljava/util/Map;Lexpo/modules/superwallexpo/SuperwallExpoModule;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lexpo/modules/kotlin/Promise;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lexpo/modules/superwallexpo/SuperwallExpoModule;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lexpo/modules/kotlin/Promise;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;->$options:Ljava/util/Map;

    iput-object p2, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;->this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;

    iput-object p3, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;->$usingPurchaseController:Ljava/lang/Boolean;

    iput-object p4, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;->$apiKey:Ljava/lang/String;

    iput-object p5, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;->$sdkVersion:Ljava/lang/String;

    iput-object p6, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;->$promise:Lexpo/modules/kotlin/Promise;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;

    iget-object v1, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;->$options:Ljava/util/Map;

    iget-object v2, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;->this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;

    iget-object v3, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;->$usingPurchaseController:Ljava/lang/Boolean;

    iget-object v4, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;->$apiKey:Ljava/lang/String;

    iget-object v5, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;->$sdkVersion:Ljava/lang/String;

    iget-object v6, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;->$promise:Lexpo/modules/kotlin/Promise;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;-><init>(Ljava/util/Map;Lexpo/modules/superwallexpo/SuperwallExpoModule;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lexpo/modules/kotlin/Promise;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 158
    iget v0, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;->label:I

    if-nez v0, :cond_7

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 159
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 161
    :try_start_0
    iget-object v0, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;->$options:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 162
    invoke-static {v0}, Lexpo/modules/superwallexpo/json/SuperwallOptionsKt;->superwallOptionsFromJson(Ljava/util/Map;)Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v0

    if-nez v0, :cond_1

    .line 163
    :cond_0
    new-instance v0, Lcom/superwall/sdk/config/options/SuperwallOptions;

    invoke-direct {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions;-><init>()V

    :cond_1
    move-object v8, v0

    .line 166
    invoke-virtual {v8}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getPaywalls()Lcom/superwall/sdk/config/options/PaywallOptions;

    move-result-object v0

    new-instance v4, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1$1;

    iget-object v5, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;->this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;

    invoke-direct {v4, v5}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1$1;-><init>(Lexpo/modules/superwallexpo/SuperwallExpoModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v4}, Lcom/superwall/sdk/config/options/PaywallOptions;->setOnBackPressed(Lkotlin/jvm/functions/Function1;)V

    .line 182
    iget-object v0, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;->$options:Ljava/util/Map;

    if-eqz v0, :cond_2

    const-string v4, "localResources"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v3

    :goto_0
    instance-of v4, v0, Ljava/util/Map;

    if-eqz v4, :cond_3

    check-cast v0, Ljava/util/Map;

    goto :goto_1

    :cond_3
    move-object v0, v3

    .line 184
    :goto_1
    sget-object v4, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    .line 186
    iget-object v5, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;->this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;

    invoke-virtual {v5}, Lexpo/modules/superwallexpo/SuperwallExpoModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v5

    invoke-virtual {v5}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    goto :goto_2

    :cond_4
    move-object v5, v3

    :goto_2
    const-string v6, "null cannot be cast to non-null type android.app.Application"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/app/Application;

    .line 187
    iget-object v6, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;->$usingPurchaseController:Ljava/lang/Boolean;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;->this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;

    invoke-virtual {v6}, Lexpo/modules/superwallexpo/SuperwallExpoModule;->getPurchaseController()Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;

    move-result-object v6

    goto :goto_3

    :cond_5
    move-object v6, v3

    .line 188
    :goto_3
    new-instance v7, Lexpo/modules/superwallexpo/ExpoActivityProvider;

    iget-object v9, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;->this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;

    invoke-virtual {v9}, Lexpo/modules/superwallexpo/SuperwallExpoModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v9

    invoke-direct {v7, v9}, Lexpo/modules/superwallexpo/ExpoActivityProvider;-><init>(Lexpo/modules/kotlin/AppContext;)V

    move-object v9, v6

    .line 185
    iget-object v6, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;->$apiKey:Ljava/lang/String;

    .line 187
    check-cast v9, Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;

    .line 188
    check-cast v7, Lcom/superwall/sdk/misc/ActivityProvider;

    .line 184
    new-instance v10, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1$2;

    iget-object v11, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;->$sdkVersion:Ljava/lang/String;

    iget-object v12, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;->$promise:Lexpo/modules/kotlin/Promise;

    invoke-direct {v10, v11, v0, p1, v12}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1$2;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/concurrent/atomic/AtomicBoolean;Lexpo/modules/kotlin/Promise;)V

    check-cast v10, Lkotlin/jvm/functions/Function1;

    move-object v13, v9

    move-object v9, v7

    move-object v7, v13

    invoke-virtual/range {v4 .. v10}, Lcom/superwall/sdk/Superwall$Companion;->configure(Landroid/app/Application;Ljava/lang/String;Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;Lcom/superwall/sdk/config/options/SuperwallOptions;Lcom/superwall/sdk/misc/ActivityProvider;Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 204
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 205
    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 206
    iget-object p1, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;->this$0:Lexpo/modules/superwallexpo/SuperwallExpoModule;

    invoke-virtual {p1}, Lexpo/modules/superwallexpo/SuperwallExpoModule;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    new-instance p1, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1$3;

    iget-object v1, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1;->$promise:Lexpo/modules/kotlin/Promise;

    invoke-direct {p1, v1, v0, v3}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$3$1$3;-><init>(Lexpo/modules/kotlin/Promise;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)V

    move-object v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 211
    :cond_6
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 158
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
