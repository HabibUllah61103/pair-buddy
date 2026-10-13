.class Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl$5;
.super Ljava/lang/Object;
.source "ManagedEventDataDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;->getLastSavedEvent(Ljava/lang/String;Ljava/util/Date;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/superwall/sdk/storage/core_data/entities/ManagedEventData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$_statement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl$5;->this$0:Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;

    iput-object p2, p0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl$5;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/superwall/sdk/storage/core_data/entities/ManagedEventData;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl$5;->this$0:Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;

    invoke-static {v0}, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;->-$$Nest$fget__db(Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl$5;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    .line 155
    :try_start_0
    const-string v1, "id"

    invoke-static {v0, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 156
    const-string v2, "createdAt"

    invoke-static {v0, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 157
    const-string v4, "name"

    invoke-static {v0, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 158
    const-string v5, "parameters"

    invoke-static {v0, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 160
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 162
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v2, v3

    goto :goto_0

    .line 168
    :cond_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    .line 174
    :cond_1
    iget-object v3, p0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl$5;->this$0:Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;

    invoke-static {v3}, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;->-$$Nest$fget__converters(Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;)Lcom/superwall/sdk/storage/core_data/Converters;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/superwall/sdk/storage/core_data/Converters;->toDate(J)Ljava/util/Date;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_2

    .line 182
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 186
    iget-object v5, p0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl$5;->this$0:Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;

    invoke-static {v5}, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;->-$$Nest$fget__converters(Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;)Lcom/superwall/sdk/storage/core_data/Converters;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/superwall/sdk/storage/core_data/Converters;->toMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 187
    new-instance v5, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventData;

    invoke-direct {v5, v1, v3, v2, v4}, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventData;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Map;)V

    move-object v3, v5

    goto :goto_2

    .line 177
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Expected NON-NULL \'java.util.Date\', but it was NULL."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :cond_3
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 194
    iget-object v0, p0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl$5;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v3

    :catchall_0
    move-exception v1

    .line 193
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 194
    iget-object v0, p0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl$5;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 195
    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl$5;->call()Lcom/superwall/sdk/storage/core_data/entities/ManagedEventData;

    move-result-object v0

    return-object v0
.end method
