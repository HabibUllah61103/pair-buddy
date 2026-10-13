.class final Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$9$1;
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
    value = "SMAP\nSuperwallExpoModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuperwallExpoModule.kt\nexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$9$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,530:1\n1563#2:531\n1634#2,2:532\n1636#2:535\n1#3:534\n*S KotlinDebug\n*F\n+ 1 SuperwallExpoModule.kt\nexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$9$1\n*L\n344#1:531\n344#1:532,2\n344#1:535\n*E\n"
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
    c = "expo.modules.superwallexpo.SuperwallExpoModule$definition$1$9$1"
    f = "SuperwallExpoModule.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $promise:Lexpo/modules/kotlin/Promise;

.field final synthetic $status:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Ljava/util/Map;Lexpo/modules/kotlin/Promise;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lexpo/modules/kotlin/Promise;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$9$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$9$1;->$status:Ljava/util/Map;

    iput-object p2, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$9$1;->$promise:Lexpo/modules/kotlin/Promise;

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

    new-instance p1, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$9$1;

    iget-object v0, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$9$1;->$status:Ljava/util/Map;

    iget-object v1, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$9$1;->$promise:Lexpo/modules/kotlin/Promise;

    invoke-direct {p1, v0, v1, p2}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$9$1;-><init>(Ljava/util/Map;Lexpo/modules/kotlin/Promise;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$9$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$9$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$9$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$9$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 334
    iget v0, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$9$1;->label:I

    if-nez v0, :cond_e

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 336
    :try_start_0
    iget-object p1, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$9$1;->$status:Ljava/util/Map;

    const-string v0, "status"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    const-string v0, "UNKNOWN"

    if-eqz p1, :cond_1

    :try_start_1
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "toUpperCase(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_2

    :cond_1
    move-object p1, v0

    .line 339
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x19d1382a

    if-eq v2, v3, :cond_c

    const v0, 0x301e4c6b

    if-eq v2, v0, :cond_a

    const v0, 0x72c27306

    if-eq v2, v0, :cond_3

    goto/16 :goto_6

    :cond_3
    const-string v0, "ACTIVE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_6

    .line 343
    :cond_4
    iget-object p1, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$9$1;->$status:Ljava/util/Map;

    const-string v0, "entitlements"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/util/List;

    goto :goto_1

    :cond_5
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_9

    .line 344
    check-cast p1, Ljava/lang/Iterable;

    .line 531
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 532
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 533
    check-cast v2, Ljava/util/Map;

    .line 345
    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_6

    check-cast v2, Ljava/lang/String;

    goto :goto_3

    :cond_6
    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_7

    .line 346
    new-instance v3, Lcom/superwall/sdk/models/entitlements/Entitlement;

    invoke-direct {v3, v2}, Lcom/superwall/sdk/models/entitlements/Entitlement;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    move-object v3, v1

    .line 533
    :goto_4
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 535
    :cond_8
    check-cast v0, Ljava/util/List;

    .line 344
    check-cast v0, Ljava/lang/Iterable;

    .line 347
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 344
    check-cast p1, Ljava/lang/Iterable;

    .line 347
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    .line 348
    :goto_5
    new-instance v0, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;-><init>(Ljava/util/Set;)V

    check-cast v0, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    goto :goto_7

    .line 339
    :cond_a
    const-string v0, "INACTIVE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_6

    .line 341
    :cond_b
    sget-object p1, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Inactive;->INSTANCE:Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Inactive;

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    goto :goto_7

    .line 339
    :cond_c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 340
    sget-object p1, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Unknown;->INSTANCE:Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Unknown;

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    goto :goto_7

    .line 350
    :cond_d
    :goto_6
    sget-object p1, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Unknown;->INSTANCE:Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Unknown;

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    .line 353
    :goto_7
    sget-object p1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p1}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/Superwall;->setSubscriptionStatus(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V

    .line 354
    iget-object p1, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$9$1;->$promise:Lexpo/modules/kotlin/Promise;

    invoke-interface {p1, v1}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception p1

    .line 356
    iget-object v0, p0, Lexpo/modules/superwallexpo/SuperwallExpoModule$definition$1$9$1;->$promise:Lexpo/modules/kotlin/Promise;

    new-instance v1, Lexpo/modules/kotlin/exception/CodedException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v1, p1}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lexpo/modules/kotlin/Promise;->reject(Lexpo/modules/kotlin/exception/CodedException;)V

    .line 358
    :goto_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 334
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
