.class final Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$26$1;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuperwallExpoModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuperwallExpoModule.kt\nexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$26$1\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,530:1\n136#2,9:531\n216#2:540\n217#2:543\n145#2:544\n1#3:541\n1#3:542\n*S KotlinDebug\n*F\n+ 1 SuperwallExpoModule.kt\nexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$26$1\n*L\n502#1:531,9\n502#1:540\n502#1:543\n502#1:544\n502#1:542\n*E\n"
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
    c = "expo.modules.superwallexpo.SuperwallExpoModule$definition$1$26$1"
    f = "SuperwallExpoModule.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $promise:Lexpo/modules/kotlin/Promise;

.field label:I


# direct methods
.method constructor <init>(Ljava/util/Map;Lexpo/modules/kotlin/Promise;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lexpo/modules/kotlin/Promise;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$26$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$26$1;->$attributes:Ljava/util/Map;

    iput-object p2, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$26$1;->$promise:Lexpo/modules/kotlin/Promise;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$26$1;

    iget-object v0, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$26$1;->$attributes:Ljava/util/Map;

    iget-object v1, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$26$1;->$promise:Lexpo/modules/kotlin/Promise;

    invoke-direct {p1, v0, v1, p2}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$26$1;-><init>(Ljava/util/Map;Lexpo/modules/kotlin/Promise;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$26$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$26$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$26$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$26$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 500
    iget v0, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$26$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 502
    :try_start_0
    iget-object p1, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$26$1;->$attributes:Ljava/util/Map;

    .line 531
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 540
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 539
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 503
    invoke-static {v3}, Lexpo/modules/superwallexpo/json/IntegrationAttributeKt;->attributionProviderFromString(Ljava/lang/String;)Lcom/superwall/sdk/models/attribution/AttributionProvider;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_0

    .line 539
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 544
    :cond_2
    check-cast v0, Ljava/util/List;

    .line 531
    check-cast v0, Ljava/lang/Iterable;

    .line 504
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    .line 506
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/Superwall;->setIntegrationAttributes(Ljava/util/Map;)V

    .line 507
    iget-object p1, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$26$1;->$promise:Lexpo/modules/kotlin/Promise;

    invoke-interface {p1, v2}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 509
    iget-object v0, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$26$1;->$promise:Lexpo/modules/kotlin/Promise;

    new-instance v1, Lexpo/modules/kotlin/exception/CodedException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v1, p1}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lexpo/modules/kotlin/Promise;->reject(Lexpo/modules/kotlin/exception/CodedException;)V

    .line 511
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 500
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
