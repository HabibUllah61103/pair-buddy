.class public final Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;
.super Ljava/lang/Object;
.source "ManagedEventDataDao_Impl.java"

# interfaces
.implements Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao;


# instance fields
.field private final __converters:Lcom/superwall/sdk/storage/core_data/Converters;

.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfManagedEventData:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/superwall/sdk/storage/core_data/entities/ManagedEventData;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method static bridge synthetic -$$Nest$fget__converters(Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;)Lcom/superwall/sdk/storage/core_data/Converters;
    .locals 0

    iget-object p0, p0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;->__converters:Lcom/superwall/sdk/storage/core_data/Converters;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__db(Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    iget-object p0, p0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__insertionAdapterOfManagedEventData(Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    iget-object p0, p0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;->__insertionAdapterOfManagedEventData:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__preparedStmtOfDeleteAll(Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "__db"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/superwall/sdk/storage/core_data/Converters;

    invoke-direct {v0}, Lcom/superwall/sdk/storage/core_data/Converters;-><init>()V

    iput-object v0, p0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;->__converters:Lcom/superwall/sdk/storage/core_data/Converters;

    .line 46
    iput-object p1, p0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 47
    new-instance v0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl$1;-><init>(Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;->__insertionAdapterOfManagedEventData:Landroidx/room/EntityInsertionAdapter;

    .line 69
    new-instance v0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl$2;-><init>(Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 251
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public countEventsByNameInPeriod(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "startDate",
            "endDate",
            "$completion"
        }
    .end annotation

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

    .line 208
    const-string v0, "\n        SELECT COUNT(*) FROM ManagedEventData \n        WHERE name = ? \n        AND createdAt BETWEEN ? AND ?\n        "

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    .line 210
    invoke-virtual {v0, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 212
    iget-object p1, p0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;->__converters:Lcom/superwall/sdk/storage/core_data/Converters;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/storage/core_data/Converters;->toTimestamp(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    if-nez p1, :cond_0

    .line 214
    invoke-virtual {v0, p2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, p2, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 219
    :goto_0
    iget-object p1, p0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;->__converters:Lcom/superwall/sdk/storage/core_data/Converters;

    invoke-virtual {p1, p3}, Lcom/superwall/sdk/storage/core_data/Converters;->toTimestamp(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_1

    .line 221
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 223
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 225
    :goto_1
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 226
    iget-object p2, p0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance p3, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl$6;

    invoke-direct {p3, p0, v0}, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl$6;-><init>(Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, p3, p4}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deleteAll(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl$4;

    invoke-direct {v1, p0}, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl$4;-><init>(Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p1}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getLastSavedEvent(Ljava/lang/String;Ljava/util/Date;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "date",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/superwall/sdk/storage/core_data/entities/ManagedEventData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 131
    const-string v0, "\n        SELECT * FROM ManagedEventData \n        WHERE name = ? \n        AND (? IS NULL OR createdAt < ?) \n        ORDER BY createdAt DESC \n        LIMIT 1\n    "

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    .line 133
    invoke-virtual {v0, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 135
    iget-object p1, p0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;->__converters:Lcom/superwall/sdk/storage/core_data/Converters;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/storage/core_data/Converters;->toTimestamp(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object p1

    const/4 v2, 0x2

    if-nez p1, :cond_0

    .line 137
    invoke-virtual {v0, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 142
    :goto_0
    iget-object p1, p0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;->__converters:Lcom/superwall/sdk/storage/core_data/Converters;

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/storage/core_data/Converters;->toTimestamp(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_1

    .line 144
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 146
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 148
    :goto_1
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 149
    iget-object p2, p0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl$5;

    invoke-direct {v1, p0, v0}, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl$5;-><init>(Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lcom/superwall/sdk/storage/core_data/entities/ManagedEventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "eventData",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/storage/core_data/entities/ManagedEventData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl$3;

    invoke-direct {v1, p0, p1}, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl$3;-><init>(Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;Lcom/superwall/sdk/storage/core_data/entities/ManagedEventData;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
