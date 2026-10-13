.class public final Lcom/superwall/sdk/storage/core_data/CoreDataManager;
.super Ljava/lang/Object;
.source "CoreDataManager.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoreDataManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoreDataManager.kt\ncom/superwall/sdk/storage/core_data/CoreDataManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,206:1\n1#2:207\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J&\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0016\u0008\u0002\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0015J&\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u00192\u0016\u0008\u0002\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0015J\u0006\u0010\u001b\u001a\u00020\u0011J\"\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u001f\u001a\u00020 H\u0086@\u00a2\u0006\u0002\u0010!J\u0016\u0010\"\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020\u0019H\u0086@\u00a2\u0006\u0002\u0010$J&\u0010%\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020)H\u0086@\u00a2\u0006\u0002\u0010+R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006,"
    }
    d2 = {
        "Lcom/superwall/sdk/storage/core_data/CoreDataManager;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "superwallDatabase",
        "Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;",
        "getSuperwallDatabase",
        "()Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;",
        "superwallDatabase$delegate",
        "Lkotlin/Lazy;",
        "saveEventData",
        "",
        "eventData",
        "Lcom/superwall/sdk/models/events/EventData;",
        "completion",
        "Lkotlin/Function1;",
        "Lcom/superwall/sdk/storage/core_data/entities/ManagedEventData;",
        "save",
        "triggerRuleOccurrence",
        "Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;",
        "Lcom/superwall/sdk/storage/core_data/entities/ManagedTriggerRuleOccurrence;",
        "deleteAllEntities",
        "getComputedPropertySinceEvent",
        "",
        "event",
        "request",
        "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;",
        "(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/models/config/ComputedPropertyRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "countTriggerRuleOccurrences",
        "ruleOccurrence",
        "(Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "countEventsByNameInPeriod",
        "name",
        "",
        "startDate",
        "Ljava/util/Date;",
        "endDate",
        "(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "superwall_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private final superwallDatabase$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$40eHySzxMfcGd1dmVCx-Y5HKITI(Landroid/content/Context;)Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/storage/core_data/CoreDataManager;->superwallDatabase_delegate$lambda$0(Landroid/content/Context;)Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->limitedParallelism$default(Lkotlinx/coroutines/CoroutineDispatcher;ILjava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    iput-object v0, p0, Lcom/superwall/sdk/storage/core_data/CoreDataManager;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 24
    new-instance v0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/storage/core_data/CoreDataManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/storage/core_data/CoreDataManager;->superwallDatabase$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getSuperwallDatabase(Lcom/superwall/sdk/storage/core_data/CoreDataManager;)Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/superwall/sdk/storage/core_data/CoreDataManager;->getSuperwallDatabase()Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;

    move-result-object p0

    return-object p0
.end method

.method private final getSuperwallDatabase()Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/superwall/sdk/storage/core_data/CoreDataManager;->superwallDatabase$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;

    return-object v0
.end method

.method public static synthetic save$default(Lcom/superwall/sdk/storage/core_data/CoreDataManager;Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 57
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/storage/core_data/CoreDataManager;->save(Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic saveEventData$default(Lcom/superwall/sdk/storage/core_data/CoreDataManager;Lcom/superwall/sdk/models/events/EventData;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 26
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/storage/core_data/CoreDataManager;->saveEventData(Lcom/superwall/sdk/models/events/EventData;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final superwallDatabase_delegate$lambda$0(Landroid/content/Context;)Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;
    .locals 1

    .line 24
    sget-object v0, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;->Companion:Lcom/superwall/sdk/storage/core_data/SuperwallDatabase$Companion;

    invoke-virtual {v0, p0}, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase$Companion;->getDatabase(Landroid/content/Context;)Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final countEventsByNameInPeriod(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/superwall/sdk/storage/core_data/CoreDataManager$countEventsByNameInPeriod$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$countEventsByNameInPeriod$1;

    iget v1, v0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$countEventsByNameInPeriod$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$countEventsByNameInPeriod$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$countEventsByNameInPeriod$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$countEventsByNameInPeriod$1;

    invoke-direct {v0, p0, p4}, Lcom/superwall/sdk/storage/core_data/CoreDataManager$countEventsByNameInPeriod$1;-><init>(Lcom/superwall/sdk/storage/core_data/CoreDataManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$countEventsByNameInPeriod$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 185
    iget v2, v0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$countEventsByNameInPeriod$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v5, p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 191
    :try_start_1
    invoke-direct {p0}, Lcom/superwall/sdk/storage/core_data/CoreDataManager;->getSuperwallDatabase()Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;

    move-result-object p4

    invoke-virtual {p4}, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;->managedEventDataDao()Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao;

    move-result-object p4

    iput v3, v0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$countEventsByNameInPeriod$1;->label:I

    invoke-interface {p4, p1, p2, p3, v0}, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao;->countEventsByNameInPeriod(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 197
    :goto_2
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 198
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 199
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->coreData:Lcom/superwall/sdk/logger/LogScope;

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 197
    const-string v3, "Error counting events by name in period from Room database."

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 203
    :goto_3
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final countTriggerRuleOccurrences(Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/superwall/sdk/storage/core_data/CoreDataManager$countTriggerRuleOccurrences$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$countTriggerRuleOccurrences$1;

    iget v1, v0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$countTriggerRuleOccurrences$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$countTriggerRuleOccurrences$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$countTriggerRuleOccurrences$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$countTriggerRuleOccurrences$1;

    invoke-direct {v0, p0, p2}, Lcom/superwall/sdk/storage/core_data/CoreDataManager$countTriggerRuleOccurrences$1;-><init>(Lcom/superwall/sdk/storage/core_data/CoreDataManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$countTriggerRuleOccurrences$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 159
    iget v2, v0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$countTriggerRuleOccurrences$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 160
    invoke-direct {p0}, Lcom/superwall/sdk/storage/core_data/CoreDataManager;->getSuperwallDatabase()Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;->managedTriggerRuleOccurrenceDao()Lcom/superwall/sdk/storage/core_data/entities/ManagedTriggerRuleOccurrenceDao;

    move-result-object p2

    .line 162
    invoke-virtual {p1}, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->getInterval()Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval;

    move-result-object v2

    .line 163
    instance-of v5, v2, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval$Minutes;

    if-eqz v5, :cond_5

    .line 164
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 165
    invoke-virtual {p1}, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->getInterval()Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval;

    move-result-object v3

    check-cast v3, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval$Minutes;

    invoke-virtual {v3}, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval$Minutes;->getMinutes()I

    move-result v3

    neg-int v3, v3

    const/16 v5, 0xc

    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->add(II)V

    .line 166
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 171
    invoke-virtual {p1}, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 170
    iput v4, v0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$countTriggerRuleOccurrences$1;->label:I

    invoke-interface {p2, v2, p1, v0}, Lcom/superwall/sdk/storage/core_data/entities/ManagedTriggerRuleOccurrenceDao;->getManagedTriggerRuleOccurrencesSinceDate(Ljava/util/Date;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    .line 169
    :cond_4
    :goto_1
    check-cast p2, Ljava/util/List;

    .line 175
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_4

    .line 177
    :cond_5
    sget-object v4, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval$Infinity;->INSTANCE:Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval$Infinity;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 179
    invoke-virtual {p1}, Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;->getKey()Ljava/lang/String;

    move-result-object p1

    iput v3, v0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$countTriggerRuleOccurrences$1;->label:I

    invoke-interface {p2, p1, v0}, Lcom/superwall/sdk/storage/core_data/entities/ManagedTriggerRuleOccurrenceDao;->getManagedTriggerRuleOccurrencesByKey(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    :goto_2
    return-object v1

    .line 159
    :cond_6
    :goto_3
    check-cast p2, Ljava/util/List;

    .line 180
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    .line 162
    :goto_4
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final deleteAllEntities()V
    .locals 6

    .line 84
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/superwall/sdk/storage/core_data/CoreDataManager$deleteAllEntities$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/superwall/sdk/storage/core_data/CoreDataManager$deleteAllEntities$1;-><init>(Lcom/superwall/sdk/storage/core_data/CoreDataManager;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getComputedPropertySinceEvent(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/models/config/ComputedPropertyRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/events/EventData;",
            "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/superwall/sdk/storage/core_data/CoreDataManager$getComputedPropertySinceEvent$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$getComputedPropertySinceEvent$1;

    iget v1, v0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$getComputedPropertySinceEvent$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$getComputedPropertySinceEvent$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$getComputedPropertySinceEvent$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$getComputedPropertySinceEvent$1;

    invoke-direct {v0, p0, p3}, Lcom/superwall/sdk/storage/core_data/CoreDataManager$getComputedPropertySinceEvent$1;-><init>(Lcom/superwall/sdk/storage/core_data/CoreDataManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$getComputedPropertySinceEvent$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 99
    iget v2, v0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$getComputedPropertySinceEvent$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$getComputedPropertySinceEvent$1;->L$0:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/superwall/sdk/models/config/ComputedPropertyRequest;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v9, p1

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    .line 105
    invoke-virtual {p1}, Lcom/superwall/sdk/models/events/EventData;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest;->getEventName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p1}, Lcom/superwall/sdk/models/events/EventData;->getCreatedAt()Ljava/util/Date;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v3

    .line 110
    :goto_1
    :try_start_1
    invoke-direct {p0}, Lcom/superwall/sdk/storage/core_data/CoreDataManager;->getSuperwallDatabase()Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;

    move-result-object p3

    invoke-virtual {p3}, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;->managedEventDataDao()Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao;

    move-result-object p3

    .line 111
    invoke-virtual {p2}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest;->getEventName()Ljava/lang/String;

    move-result-object v2

    .line 110
    iput-object p2, v0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$getComputedPropertySinceEvent$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$getComputedPropertySinceEvent$1;->label:I

    invoke-interface {p3, v2, p1, v0}, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao;->getLastSavedEvent(Ljava/lang/String;Ljava/util/Date;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    check-cast p3, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventData;

    if-nez p3, :cond_5

    return-object v3

    .line 116
    :cond_5
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    .line 117
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p3}, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventData;->getCreatedAt()Ljava/util/Date;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 118
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    .line 120
    invoke-virtual {p2}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest;->getType()Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->getCalendarComponent()I

    move-result v1

    if-eq v1, v4, :cond_a

    const/16 v2, 0xc

    const/4 v5, 0x2

    if-eq v1, v5, :cond_9

    const/4 v4, 0x5

    if-eq v1, v4, :cond_8

    const/16 v4, 0xb

    if-eq v1, v4, :cond_7

    if-eq v1, v2, :cond_6

    goto/16 :goto_3

    .line 141
    :cond_6
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long/2addr v4, v0

    const p3, 0xea60

    int-to-long v0, p3

    .line 142
    div-long/2addr v4, v0

    const/16 p3, 0x3c

    int-to-long v0, p3

    rem-long/2addr v4, v0

    long-to-int p3, v4

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p3

    .line 143
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 136
    :cond_7
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    sub-long/2addr v1, v5

    const p3, 0x36ee80

    int-to-long v5, p3

    .line 137
    div-long/2addr v1, v5

    const/16 p3, 0x18

    int-to-long v5, p3

    rem-long/2addr v1, v5

    long-to-int p3, v1

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p3

    .line 138
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 131
    :cond_8
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    sub-long/2addr v1, v5

    const p3, 0x5265c00

    int-to-long v5, p3

    .line 132
    div-long/2addr v1, v5

    long-to-int p3, v1

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p3

    .line 133
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 126
    :cond_9
    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v1, v4

    mul-int/2addr v1, v2

    .line 127
    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result p3

    add-int/2addr v1, p3

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result p3

    sub-int/2addr v1, p3

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p3

    .line 128
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 122
    :cond_a
    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr p3, v0

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p3

    .line 123
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :goto_3
    invoke-virtual {p2}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest;->getType()Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;->dateComponent(Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    .line 149
    :goto_4
    sget-object v4, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 150
    sget-object v5, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 151
    sget-object v6, Lcom/superwall/sdk/logger/LogScope;->coreData:Lcom/superwall/sdk/logger/LogScope;

    const/16 v10, 0x8

    const/4 v11, 0x0

    .line 149
    const-string v7, "Error getting last saved event from Room database."

    const/4 v8, 0x0

    invoke-static/range {v4 .. v11}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-object v3
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/superwall/sdk/storage/core_data/CoreDataManager;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public final save(Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/storage/core_data/entities/ManagedTriggerRuleOccurrence;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "triggerRuleOccurrence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$save$1;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, p2, v2}, Lcom/superwall/sdk/storage/core_data/CoreDataManager$save$1;-><init>(Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;Lcom/superwall/sdk/storage/core_data/CoreDataManager;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final saveEventData(Lcom/superwall/sdk/models/events/EventData;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/models/events/EventData;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/storage/core_data/entities/ManagedEventData;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "eventData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$saveEventData$1;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, p2, v2}, Lcom/superwall/sdk/storage/core_data/CoreDataManager$saveEventData$1;-><init>(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/storage/core_data/CoreDataManager;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
