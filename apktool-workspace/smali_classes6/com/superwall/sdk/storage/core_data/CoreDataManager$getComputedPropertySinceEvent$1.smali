.class final Lcom/superwall/sdk/storage/core_data/CoreDataManager$getComputedPropertySinceEvent$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "CoreDataManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/storage/core_data/CoreDataManager;->getComputedPropertySinceEvent(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/models/config/ComputedPropertyRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.superwall.sdk.storage.core_data.CoreDataManager"
    f = "CoreDataManager.kt"
    i = {
        0x0
    }
    l = {
        0x6e
    }
    m = "getComputedPropertySinceEvent"
    n = {
        "request"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/superwall/sdk/storage/core_data/CoreDataManager;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/storage/core_data/CoreDataManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/storage/core_data/CoreDataManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/storage/core_data/CoreDataManager$getComputedPropertySinceEvent$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$getComputedPropertySinceEvent$1;->this$0:Lcom/superwall/sdk/storage/core_data/CoreDataManager;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$getComputedPropertySinceEvent$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$getComputedPropertySinceEvent$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$getComputedPropertySinceEvent$1;->label:I

    iget-object p1, p0, Lcom/superwall/sdk/storage/core_data/CoreDataManager$getComputedPropertySinceEvent$1;->this$0:Lcom/superwall/sdk/storage/core_data/CoreDataManager;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0, v0, v1}, Lcom/superwall/sdk/storage/core_data/CoreDataManager;->getComputedPropertySinceEvent(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/models/config/ComputedPropertyRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
