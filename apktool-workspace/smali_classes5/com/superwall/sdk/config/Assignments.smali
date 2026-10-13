.class public final Lcom/superwall/sdk/config/Assignments;
.super Ljava/lang/Object;
.source "Assignments.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssignments.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Assignments.kt\ncom/superwall/sdk/config/Assignments\n+ 2 ErrorTracking.kt\ncom/superwall/sdk/utilities/ErrorTrackingKt\n*L\n1#1,83:1\n135#2,10:84\n135#2,10:94\n*S KotlinDebug\n*F\n+ 1 Assignments.kt\ncom/superwall/sdk/config/Assignments\n*L\n53#1:84,10\n68#1:94,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0018\u0008\u0002\u0010\u0008\u001a\u0012\u0012\u0008\u0012\u00060\nj\u0002`\u000b\u0012\u0004\u0012\u00020\u000c0\t\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0014\u0010\u0013\u001a\u00020\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016J.\u0010\u0018\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001b0\u001a\u0012\u0004\u0012\u00020\u001c0\u00192\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016H\u0086@\u00a2\u0006\u0002\u0010\u001dJ\u000e\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020 J,\u0010!\u001a\u00020\u00142\"\u0010\"\u001a\u001e\u0012\u0014\u0012\u0012\u0012\u0008\u0012\u00060\nj\u0002`\u000b\u0012\u0004\u0012\u00020\u000c0\t\u0012\u0004\u0012\u00020$0#H\u0002J\u0006\u0010%\u001a\u00020\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000f\u001a\u0012\u0012\u0008\u0012\u00060\nj\u0002`\u000b\u0012\u0004\u0012\u00020\u000c0\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R!\u0010\u0008\u001a\u0012\u0012\u0008\u0012\u00060\nj\u0002`\u000b\u0012\u0004\u0012\u00020\u000c0\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006&"
    }
    d2 = {
        "Lcom/superwall/sdk/config/Assignments;",
        "",
        "storage",
        "Lcom/superwall/sdk/storage/LocalStorage;",
        "network",
        "Lcom/superwall/sdk/network/SuperwallAPI;",
        "ioScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "unconfirmedAssignments",
        "",
        "",
        "Lcom/superwall/sdk/models/triggers/ExperimentID;",
        "Lcom/superwall/sdk/models/triggers/Experiment$Variant;",
        "<init>",
        "(Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/network/SuperwallAPI;Lkotlinx/coroutines/CoroutineScope;Ljava/util/Map;)V",
        "_unconfirmedAssignments",
        "",
        "getUnconfirmedAssignments",
        "()Ljava/util/Map;",
        "choosePaywallVariants",
        "",
        "triggers",
        "",
        "Lcom/superwall/sdk/models/triggers/Trigger;",
        "getAssignments",
        "Lcom/superwall/sdk/misc/Either;",
        "",
        "Lcom/superwall/sdk/models/assignment/Assignment;",
        "Lcom/superwall/sdk/network/NetworkError;",
        "(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "confirmAssignment",
        "assignment",
        "Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;",
        "updateAssignments",
        "operation",
        "Lkotlin/Function1;",
        "Lcom/superwall/sdk/config/ConfigLogic$AssignmentOutcome;",
        "reset",
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
.field private _unconfirmedAssignments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/triggers/Experiment$Variant;",
            ">;"
        }
    .end annotation
.end field

.field private final ioScope:Lkotlinx/coroutines/CoroutineScope;

.field private final network:Lcom/superwall/sdk/network/SuperwallAPI;

.field private final storage:Lcom/superwall/sdk/storage/LocalStorage;


# direct methods
.method public static synthetic $r8$lambda$UI31KBvP_HPs6yoO9IEJX93uCFo(Ljava/util/Set;Ljava/util/Map;)Lcom/superwall/sdk/config/ConfigLogic$AssignmentOutcome;
    .locals 0

    invoke-static {p0, p1}, Lcom/superwall/sdk/config/Assignments;->choosePaywallVariants$lambda$0(Ljava/util/Set;Ljava/util/Map;)Lcom/superwall/sdk/config/ConfigLogic$AssignmentOutcome;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yahqVq1_sawzAbiuLOuWmZubF4E(Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;Lcom/superwall/sdk/config/Assignments;Ljava/util/Map;)Lcom/superwall/sdk/config/ConfigLogic$AssignmentOutcome;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/config/Assignments;->confirmAssignment$lambda$2$lambda$1(Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;Lcom/superwall/sdk/config/Assignments;Ljava/util/Map;)Lcom/superwall/sdk/config/ConfigLogic$AssignmentOutcome;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/network/SuperwallAPI;Lkotlinx/coroutines/CoroutineScope;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/storage/LocalStorage;",
            "Lcom/superwall/sdk/network/SuperwallAPI;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/triggers/Experiment$Variant;",
            ">;)V"
        }
    .end annotation

    const-string v0, "storage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unconfirmedAssignments"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/superwall/sdk/config/Assignments;->storage:Lcom/superwall/sdk/storage/LocalStorage;

    .line 20
    iput-object p2, p0, Lcom/superwall/sdk/config/Assignments;->network:Lcom/superwall/sdk/network/SuperwallAPI;

    .line 21
    iput-object p3, p0, Lcom/superwall/sdk/config/Assignments;->ioScope:Lkotlinx/coroutines/CoroutineScope;

    .line 25
    invoke-static {p4}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/config/Assignments;->_unconfirmedAssignments:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/network/SuperwallAPI;Lkotlinx/coroutines/CoroutineScope;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 22
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p4

    .line 18
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/config/Assignments;-><init>(Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/network/SuperwallAPI;Lkotlinx/coroutines/CoroutineScope;Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic access$getNetwork$p(Lcom/superwall/sdk/config/Assignments;)Lcom/superwall/sdk/network/SuperwallAPI;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/superwall/sdk/config/Assignments;->network:Lcom/superwall/sdk/network/SuperwallAPI;

    return-object p0
.end method

.method public static final synthetic access$updateAssignments(Lcom/superwall/sdk/config/Assignments;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/superwall/sdk/config/Assignments;->updateAssignments(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final choosePaywallVariants$lambda$0(Ljava/util/Set;Ljava/util/Map;)Lcom/superwall/sdk/config/ConfigLogic$AssignmentOutcome;
    .locals 1

    const-string v0, "confirmedAssignments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/superwall/sdk/config/ConfigLogic;->INSTANCE:Lcom/superwall/sdk/config/ConfigLogic;

    invoke-virtual {v0, p0, p1}, Lcom/superwall/sdk/config/ConfigLogic;->chooseAssignments(Ljava/util/Set;Ljava/util/Map;)Lcom/superwall/sdk/config/ConfigLogic$AssignmentOutcome;

    move-result-object p0

    return-object p0
.end method

.method private static final confirmAssignment$lambda$2$lambda$1(Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;Lcom/superwall/sdk/config/Assignments;Ljava/util/Map;)Lcom/superwall/sdk/config/ConfigLogic$AssignmentOutcome;
    .locals 1

    const-string v0, "confirmedAssignments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/superwall/sdk/config/ConfigLogic;->INSTANCE:Lcom/superwall/sdk/config/ConfigLogic;

    .line 60
    invoke-virtual {p1}, Lcom/superwall/sdk/config/Assignments;->getUnconfirmedAssignments()Ljava/util/Map;

    move-result-object p1

    .line 58
    invoke-virtual {v0, p0, p1, p2}, Lcom/superwall/sdk/config/ConfigLogic;->move(Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;Ljava/util/Map;Ljava/util/Map;)Lcom/superwall/sdk/config/ConfigLogic$AssignmentOutcome;

    move-result-object p0

    return-object p0
.end method

.method private final updateAssignments(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/triggers/Experiment$Variant;",
            ">;",
            "Lcom/superwall/sdk/config/ConfigLogic$AssignmentOutcome;",
            ">;)V"
        }
    .end annotation

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/superwall/sdk/config/Assignments;->storage:Lcom/superwall/sdk/storage/LocalStorage;

    invoke-virtual {v0}, Lcom/superwall/sdk/storage/LocalStorage;->getConfirmedAssignments()Ljava/util/Map;

    move-result-object v0

    .line 71
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/superwall/sdk/config/ConfigLogic$AssignmentOutcome;

    .line 72
    invoke-virtual {p1}, Lcom/superwall/sdk/config/ConfigLogic$AssignmentOutcome;->getUnconfirmed()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/superwall/sdk/config/Assignments;->_unconfirmedAssignments:Ljava/util/Map;

    .line 73
    invoke-virtual {p1}, Lcom/superwall/sdk/config/ConfigLogic$AssignmentOutcome;->getConfirmed()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 75
    iget-object v0, p0, Lcom/superwall/sdk/config/Assignments;->storage:Lcom/superwall/sdk/storage/LocalStorage;

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/storage/LocalStorage;->saveConfirmedAssignments(Ljava/util/Map;)V

    .line 76
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 95
    new-instance v0, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/superwall/sdk/misc/Either;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 97
    invoke-static {p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 102
    :cond_0
    new-instance v0, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Lcom/superwall/sdk/misc/Either;

    return-void
.end method


# virtual methods
.method public final choosePaywallVariants(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/triggers/Trigger;",
            ">;)V"
        }
    .end annotation

    const-string v0, "triggers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/superwall/sdk/config/Assignments$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/config/Assignments$$ExternalSyntheticLambda1;-><init>(Ljava/util/Set;)V

    invoke-direct {p0, v0}, Lcom/superwall/sdk/config/Assignments;->updateAssignments(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final confirmAssignment(Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;)V
    .locals 7

    const-string v0, "assignment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    :try_start_0
    sget-object v0, Lcom/superwall/sdk/models/assignment/AssignmentPostback;->Companion:Lcom/superwall/sdk/models/assignment/AssignmentPostback$Companion;

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/models/assignment/AssignmentPostback$Companion;->create(Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;)Lcom/superwall/sdk/models/assignment/AssignmentPostback;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/superwall/sdk/config/Assignments;->ioScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/superwall/sdk/config/Assignments$confirmAssignment$1$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/superwall/sdk/config/Assignments$confirmAssignment$1$1;-><init>(Lcom/superwall/sdk/config/Assignments;Lcom/superwall/sdk/models/assignment/AssignmentPostback;Lkotlin/coroutines/Continuation;)V

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 57
    new-instance v0, Lcom/superwall/sdk/config/Assignments$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lcom/superwall/sdk/config/Assignments$$ExternalSyntheticLambda0;-><init>(Lcom/superwall/sdk/models/assignment/ConfirmableAssignment;Lcom/superwall/sdk/config/Assignments;)V

    invoke-direct {p0, v0}, Lcom/superwall/sdk/config/Assignments;->updateAssignments(Lkotlin/jvm/functions/Function1;)V

    .line 64
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 85
    new-instance v0, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/superwall/sdk/misc/Either;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 87
    invoke-static {p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 92
    :cond_0
    new-instance v0, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Lcom/superwall/sdk/misc/Either;

    return-void
.end method

.method public final getAssignments(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/superwall/sdk/models/triggers/Trigger;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/misc/Either<",
            "+",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/assignment/Assignment;",
            ">;",
            "Lcom/superwall/sdk/network/NetworkError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/superwall/sdk/config/Assignments$getAssignments$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/config/Assignments$getAssignments$1;

    iget v1, v0, Lcom/superwall/sdk/config/Assignments$getAssignments$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/config/Assignments$getAssignments$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/config/Assignments$getAssignments$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/config/Assignments$getAssignments$1;

    invoke-direct {v0, p0, p2}, Lcom/superwall/sdk/config/Assignments$getAssignments$1;-><init>(Lcom/superwall/sdk/config/Assignments;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/superwall/sdk/config/Assignments$getAssignments$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 38
    iget v2, v0, Lcom/superwall/sdk/config/Assignments$getAssignments$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/superwall/sdk/config/Assignments$getAssignments$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    iget-object v2, v0, Lcom/superwall/sdk/config/Assignments$getAssignments$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/superwall/sdk/config/Assignments;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    iget-object p2, p0, Lcom/superwall/sdk/config/Assignments;->network:Lcom/superwall/sdk/network/SuperwallAPI;

    .line 40
    iput-object p0, v0, Lcom/superwall/sdk/config/Assignments$getAssignments$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/superwall/sdk/config/Assignments$getAssignments$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/superwall/sdk/config/Assignments$getAssignments$1;->label:I

    invoke-interface {p2, v0}, Lcom/superwall/sdk/network/SuperwallAPI;->getAssignments(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, p0

    .line 38
    :goto_1
    check-cast p2, Lcom/superwall/sdk/misc/Either;

    .line 41
    new-instance v4, Lcom/superwall/sdk/config/Assignments$getAssignments$2;

    const/4 v5, 0x0

    invoke-direct {v4, v2, p1, v5}, Lcom/superwall/sdk/config/Assignments$getAssignments$2;-><init>(Lcom/superwall/sdk/config/Assignments;Ljava/util/Set;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput-object v5, v0, Lcom/superwall/sdk/config/Assignments$getAssignments$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/superwall/sdk/config/Assignments$getAssignments$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/config/Assignments$getAssignments$1;->label:I

    invoke-static {p2, v4, v0}, Lcom/superwall/sdk/misc/EitherKt;->then(Lcom/superwall/sdk/misc/Either;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    return-object p1
.end method

.method public final getUnconfirmedAssignments()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/triggers/Experiment$Variant;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/superwall/sdk/config/Assignments;->_unconfirmedAssignments:Ljava/util/Map;

    return-object v0
.end method

.method public final reset()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/superwall/sdk/config/Assignments;->_unconfirmedAssignments:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
