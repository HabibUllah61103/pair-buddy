.class Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl$3;
.super Ljava/lang/Object;
.source "ManagedEventDataDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;->insert(Lcom/superwall/sdk/storage/core_data/entities/ManagedEventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;

.field final synthetic val$eventData:Lcom/superwall/sdk/storage/core_data/entities/ManagedEventData;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;Lcom/superwall/sdk/storage/core_data/entities/ManagedEventData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$eventData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl$3;->this$0:Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;

    iput-object p2, p0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl$3;->val$eventData:Lcom/superwall/sdk/storage/core_data/entities/ManagedEventData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl$3;->call()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public call()Lkotlin/Unit;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl$3;->this$0:Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;

    invoke-static {v0}, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;->-$$Nest$fget__db(Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl$3;->this$0:Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;

    invoke-static {v0}, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;->-$$Nest$fget__insertionAdapterOfManagedEventData(Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;)Landroidx/room/EntityInsertionAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl$3;->val$eventData:Lcom/superwall/sdk/storage/core_data/entities/ManagedEventData;

    invoke-virtual {v0, v1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl$3;->this$0:Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;

    invoke-static {v0}, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;->-$$Nest$fget__db(Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 90
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object v1, p0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl$3;->this$0:Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;

    invoke-static {v1}, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;->-$$Nest$fget__db(Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl$3;->this$0:Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;

    invoke-static {v1}, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;->-$$Nest$fget__db(Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 93
    throw v0
.end method
