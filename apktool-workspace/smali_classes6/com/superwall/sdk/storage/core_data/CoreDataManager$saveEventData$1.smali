.class final Lcom/superwall/sdk/storage/core_data/CoreDataManager$saveEventData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CoreDataManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/storage/core_data/CoreDataManager;->saveEventData(Lcom/superwall/sdk/models/events/EventData;Lkotlin/jvm/functions/Function1;)V
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
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.superwall.sdk.storage.core_data.CoreDataManager$saveEventData$1"
    f = "CoreDataManager.kt"
    i = {
        0x0
    }
    l = {
        0x2a
    }
    m = "invokeSuspend"
    n = {
        "managedEventData"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $completion:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/superwall/sdk/storage/core_data/entities/ManagedEventData;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $eventData:Lcom/superwall/sdk/models/events/EventData;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/superwall/sdk/storage/core_data/CoreDataManager;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/storage/core_data/CoreDataManager;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/events/EventData;",
            "Lcom/superwall/sdk/storage/core_data/CoreDataManager;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/storage/core_data/entities/ManagedEventData;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/storage/core_data/CoreDataManager$saveEventData$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$saveEventData$1;->$eventData:Lcom/superwall/sdk/models/events/EventData;

    iput-object p2, p0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$saveEventData$1;->this$0:Lcom/superwall/sdk/storage/core_data/CoreDataManager;

    iput-object p3, p0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$saveEventData$1;->$completion:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/superwall/sdk/storage/core_data/CoreDataManager$saveEventData$1;

    iget-object v0, p0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$saveEventData$1;->$eventData:Lcom/superwall/sdk/models/events/EventData;

    iget-object v1, p0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$saveEventData$1;->this$0:Lcom/superwall/sdk/storage/core_data/CoreDataManager;

    iget-object v2, p0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$saveEventData$1;->$completion:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/superwall/sdk/storage/core_data/CoreDataManager$saveEventData$1;-><init>(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/storage/core_data/CoreDataManager;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/storage/core_data/CoreDataManager$saveEventData$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/storage/core_data/CoreDataManager$saveEventData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/storage/core_data/CoreDataManager$saveEventData$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/storage/core_data/CoreDataManager$saveEventData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 30
    iget v1, p0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$saveEventData$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$saveEventData$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventData;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    :try_start_1
    new-instance p1, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventData;

    .line 35
    iget-object v1, p0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$saveEventData$1;->$eventData:Lcom/superwall/sdk/models/events/EventData;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/events/EventData;->getId()Ljava/lang/String;

    move-result-object v1

    .line 36
    iget-object v3, p0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$saveEventData$1;->$eventData:Lcom/superwall/sdk/models/events/EventData;

    invoke-virtual {v3}, Lcom/superwall/sdk/models/events/EventData;->getCreatedAt()Ljava/util/Date;

    move-result-object v3

    .line 37
    iget-object v4, p0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$saveEventData$1;->$eventData:Lcom/superwall/sdk/models/events/EventData;

    invoke-virtual {v4}, Lcom/superwall/sdk/models/events/EventData;->getName()Ljava/lang/String;

    move-result-object v4

    .line 38
    iget-object v5, p0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$saveEventData$1;->$eventData:Lcom/superwall/sdk/models/events/EventData;

    invoke-virtual {v5}, Lcom/superwall/sdk/models/events/EventData;->getParameters()Ljava/util/Map;

    move-result-object v5

    .line 34
    invoke-direct {p1, v1, v3, v4, v5}, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventData;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Map;)V

    .line 42
    iget-object v1, p0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$saveEventData$1;->this$0:Lcom/superwall/sdk/storage/core_data/CoreDataManager;

    invoke-static {v1}, Lcom/superwall/sdk/storage/core_data/CoreDataManager;->access$getSuperwallDatabase(Lcom/superwall/sdk/storage/core_data/CoreDataManager;)Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;->managedEventDataDao()Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao;

    move-result-object v1

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$saveEventData$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$saveEventData$1;->label:I

    invoke-interface {v1, p1, v3}, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao;->insert(Lcom/superwall/sdk/storage/core_data/entities/ManagedEventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    .line 45
    :goto_0
    iget-object p1, p0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$saveEventData$1;->$completion:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_3

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v5, p1

    .line 47
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 48
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 49
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->coreData:Lcom/superwall/sdk/logger/LogScope;

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 47
    const-string v3, "Error saving to Room database."

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 54
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
