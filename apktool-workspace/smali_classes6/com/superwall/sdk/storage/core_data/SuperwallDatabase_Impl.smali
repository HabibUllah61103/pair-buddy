.class public final Lcom/superwall/sdk/storage/core_data/SuperwallDatabase_Impl;
.super Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;
.source "SuperwallDatabase_Impl.java"


# instance fields
.field private volatile _managedEventDataDao:Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao;

.field private volatile _managedTriggerRuleOccurrenceDao:Lcom/superwall/sdk/storage/core_data/entities/ManagedTriggerRuleOccurrenceDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/superwall/sdk/storage/core_data/SuperwallDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/superwall/sdk/storage/core_data/SuperwallDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/superwall/sdk/storage/core_data/SuperwallDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$300(Lcom/superwall/sdk/storage/core_data/SuperwallDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$400(Lcom/superwall/sdk/storage/core_data/SuperwallDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 4

    .line 141
    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    invoke-super {p0}, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;->assertNotMainThread()V

    .line 142
    invoke-super {p0}, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v2

    .line 144
    :try_start_0
    invoke-super {p0}, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;->beginTransaction()V

    .line 145
    const-string v3, "DELETE FROM `ManagedEventData`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 146
    const-string v3, "DELETE FROM `ManagedTriggerRuleOccurrence`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 147
    invoke-super {p0}, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-super {p0}, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;->endTransaction()V

    .line 150
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 151
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    .line 149
    invoke-super {p0}, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase;->endTransaction()V

    .line 150
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 151
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 154
    :cond_1
    throw v3
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 6

    .line 134
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 135
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 136
    new-instance v3, Landroidx/room/InvalidationTracker;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "ManagedEventData"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "ManagedTriggerRuleOccurrence"

    aput-object v5, v4, v1

    invoke-direct {v3, p0, v0, v2, v4}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v3
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "config"
        }
    .end annotation

    .line 40
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase_Impl$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase_Impl$1;-><init>(Lcom/superwall/sdk/storage/core_data/SuperwallDatabase_Impl;I)V

    const-string v2, "11f00dc53be30cfe213781d453297cf1"

    const-string v3, "ee4655b3ec0d2ace448aa481008538b7"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 127
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public getAutoMigrations(Ljava/util/Map;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "autoMigrationSpecs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;>;"
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method protected getRequiredTypeConverters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 161
    const-class v1, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao;

    invoke-static {}, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-class v1, Lcom/superwall/sdk/storage/core_data/entities/ManagedTriggerRuleOccurrenceDao;

    invoke-static {}, Lcom/superwall/sdk/storage/core_data/entities/ManagedTriggerRuleOccurrenceDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public managedEventDataDao()Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase_Impl;->_managedEventDataDao:Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase_Impl;->_managedEventDataDao:Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao;

    return-object v0

    .line 186
    :cond_0
    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase_Impl;->_managedEventDataDao:Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao;

    if-nez v0, :cond_1

    .line 188
    new-instance v0, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;

    invoke-direct {v0, p0}, Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase_Impl;->_managedEventDataDao:Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao;

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase_Impl;->_managedEventDataDao:Lcom/superwall/sdk/storage/core_data/entities/ManagedEventDataDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 191
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public managedTriggerRuleOccurrenceDao()Lcom/superwall/sdk/storage/core_data/entities/ManagedTriggerRuleOccurrenceDao;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase_Impl;->_managedTriggerRuleOccurrenceDao:Lcom/superwall/sdk/storage/core_data/entities/ManagedTriggerRuleOccurrenceDao;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase_Impl;->_managedTriggerRuleOccurrenceDao:Lcom/superwall/sdk/storage/core_data/entities/ManagedTriggerRuleOccurrenceDao;

    return-object v0

    .line 200
    :cond_0
    monitor-enter p0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase_Impl;->_managedTriggerRuleOccurrenceDao:Lcom/superwall/sdk/storage/core_data/entities/ManagedTriggerRuleOccurrenceDao;

    if-nez v0, :cond_1

    .line 202
    new-instance v0, Lcom/superwall/sdk/storage/core_data/entities/ManagedTriggerRuleOccurrenceDao_Impl;

    invoke-direct {v0, p0}, Lcom/superwall/sdk/storage/core_data/entities/ManagedTriggerRuleOccurrenceDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase_Impl;->_managedTriggerRuleOccurrenceDao:Lcom/superwall/sdk/storage/core_data/entities/ManagedTriggerRuleOccurrenceDao;

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/superwall/sdk/storage/core_data/SuperwallDatabase_Impl;->_managedTriggerRuleOccurrenceDao:Lcom/superwall/sdk/storage/core_data/entities/ManagedTriggerRuleOccurrenceDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 205
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
