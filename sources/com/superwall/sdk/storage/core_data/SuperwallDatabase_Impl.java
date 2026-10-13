package com.superwall.sdk.storage.core_data;

import androidx.room.DatabaseConfiguration;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.RoomMasterTable;
import androidx.room.RoomOpenHelper;
import androidx.room.migration.AutoMigrationSpec;
import androidx.room.migration.Migration;
import androidx.room.util.DBUtil;
import androidx.room.util.TableInfo;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import com.superwall.sdk.storage.core_data.entities.ManagedEventDataDao;
import com.superwall.sdk.storage.core_data.entities.ManagedEventDataDao_Impl;
import com.superwall.sdk.storage.core_data.entities.ManagedTriggerRuleOccurrenceDao;
import com.superwall.sdk.storage.core_data.entities.ManagedTriggerRuleOccurrenceDao_Impl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class SuperwallDatabase_Impl extends SuperwallDatabase {
    private volatile ManagedEventDataDao _managedEventDataDao;
    private volatile ManagedTriggerRuleOccurrenceDao _managedTriggerRuleOccurrenceDao;

    @Override // androidx.room.RoomDatabase
    protected SupportSQLiteOpenHelper createOpenHelper(final DatabaseConfiguration config) {
        return config.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.builder(config.context).name(config.name).callback(new RoomOpenHelper(config, new RoomOpenHelper.Delegate(1) { // from class: com.superwall.sdk.storage.core_data.SuperwallDatabase_Impl.1
            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onPostMigrate(final SupportSQLiteDatabase db) {
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void createAllTables(final SupportSQLiteDatabase db) {
                db.execSQL("CREATE TABLE IF NOT EXISTS `ManagedEventData` (`id` TEXT NOT NULL, `createdAt` INTEGER NOT NULL, `name` TEXT NOT NULL, `parameters` TEXT NOT NULL, PRIMARY KEY(`id`))");
                db.execSQL("CREATE TABLE IF NOT EXISTS `ManagedTriggerRuleOccurrence` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `createdAt` INTEGER NOT NULL, `occurrenceKey` TEXT NOT NULL)");
                db.execSQL(RoomMasterTable.CREATE_QUERY);
                db.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '11f00dc53be30cfe213781d453297cf1')");
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void dropAllTables(final SupportSQLiteDatabase db) {
                db.execSQL("DROP TABLE IF EXISTS `ManagedEventData`");
                db.execSQL("DROP TABLE IF EXISTS `ManagedTriggerRuleOccurrence`");
                List list = SuperwallDatabase_Impl.this.mCallbacks;
                if (list != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((RoomDatabase.Callback) it.next()).onDestructiveMigration(db);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onCreate(final SupportSQLiteDatabase db) {
                List list = SuperwallDatabase_Impl.this.mCallbacks;
                if (list != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((RoomDatabase.Callback) it.next()).onCreate(db);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onOpen(final SupportSQLiteDatabase db) {
                SuperwallDatabase_Impl.this.mDatabase = db;
                SuperwallDatabase_Impl.this.internalInitInvalidationTracker(db);
                List list = SuperwallDatabase_Impl.this.mCallbacks;
                if (list != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((RoomDatabase.Callback) it.next()).onOpen(db);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onPreMigrate(final SupportSQLiteDatabase db) {
                DBUtil.dropFtsSyncTriggers(db);
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public RoomOpenHelper.ValidationResult onValidateSchema(final SupportSQLiteDatabase db) {
                HashMap map = new HashMap(4);
                map.put("id", new TableInfo.Column("id", "TEXT", true, 1, null, 1));
                map.put("createdAt", new TableInfo.Column("createdAt", "INTEGER", true, 0, null, 1));
                map.put("name", new TableInfo.Column("name", "TEXT", true, 0, null, 1));
                map.put("parameters", new TableInfo.Column("parameters", "TEXT", true, 0, null, 1));
                TableInfo tableInfo = new TableInfo("ManagedEventData", map, new HashSet(0), new HashSet(0));
                TableInfo tableInfo2 = TableInfo.read(db, "ManagedEventData");
                if (!tableInfo.equals(tableInfo2)) {
                    return new RoomOpenHelper.ValidationResult(false, "ManagedEventData(com.superwall.sdk.storage.core_data.entities.ManagedEventData).\n Expected:\n" + tableInfo + "\n Found:\n" + tableInfo2);
                }
                HashMap map2 = new HashMap(3);
                map2.put("id", new TableInfo.Column("id", "INTEGER", false, 1, null, 1));
                map2.put("createdAt", new TableInfo.Column("createdAt", "INTEGER", true, 0, null, 1));
                map2.put("occurrenceKey", new TableInfo.Column("occurrenceKey", "TEXT", true, 0, null, 1));
                TableInfo tableInfo3 = new TableInfo("ManagedTriggerRuleOccurrence", map2, new HashSet(0), new HashSet(0));
                TableInfo tableInfo4 = TableInfo.read(db, "ManagedTriggerRuleOccurrence");
                if (!tableInfo3.equals(tableInfo4)) {
                    return new RoomOpenHelper.ValidationResult(false, "ManagedTriggerRuleOccurrence(com.superwall.sdk.storage.core_data.entities.ManagedTriggerRuleOccurrence).\n Expected:\n" + tableInfo3 + "\n Found:\n" + tableInfo4);
                }
                return new RoomOpenHelper.ValidationResult(true, null);
            }
        }, "11f00dc53be30cfe213781d453297cf1", "ee4655b3ec0d2ace448aa481008538b7")).build());
    }

    @Override // androidx.room.RoomDatabase
    protected InvalidationTracker createInvalidationTracker() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "ManagedEventData", "ManagedTriggerRuleOccurrence");
    }

    @Override // androidx.room.RoomDatabase
    public void clearAllTables() {
        super.assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.execSQL("DELETE FROM `ManagedEventData`");
            writableDatabase.execSQL("DELETE FROM `ManagedTriggerRuleOccurrence`");
            super.setTransactionSuccessful();
        } finally {
            super.endTransaction();
            writableDatabase.query("PRAGMA wal_checkpoint(FULL)").close();
            if (!writableDatabase.inTransaction()) {
                writableDatabase.execSQL("VACUUM");
            }
        }
    }

    @Override // androidx.room.RoomDatabase
    protected Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
        HashMap map = new HashMap();
        map.put(ManagedEventDataDao.class, ManagedEventDataDao_Impl.getRequiredConverters());
        map.put(ManagedTriggerRuleOccurrenceDao.class, ManagedTriggerRuleOccurrenceDao_Impl.getRequiredConverters());
        return map;
    }

    @Override // androidx.room.RoomDatabase
    public Set<Class<? extends AutoMigrationSpec>> getRequiredAutoMigrationSpecs() {
        return new HashSet();
    }

    @Override // androidx.room.RoomDatabase
    public List<Migration> getAutoMigrations(final Map<Class<? extends AutoMigrationSpec>, AutoMigrationSpec> autoMigrationSpecs) {
        return new ArrayList();
    }

    @Override // com.superwall.sdk.storage.core_data.SuperwallDatabase
    public ManagedEventDataDao managedEventDataDao() {
        ManagedEventDataDao managedEventDataDao;
        if (this._managedEventDataDao != null) {
            return this._managedEventDataDao;
        }
        synchronized (this) {
            if (this._managedEventDataDao == null) {
                this._managedEventDataDao = new ManagedEventDataDao_Impl(this);
            }
            managedEventDataDao = this._managedEventDataDao;
        }
        return managedEventDataDao;
    }

    @Override // com.superwall.sdk.storage.core_data.SuperwallDatabase
    public ManagedTriggerRuleOccurrenceDao managedTriggerRuleOccurrenceDao() {
        ManagedTriggerRuleOccurrenceDao managedTriggerRuleOccurrenceDao;
        if (this._managedTriggerRuleOccurrenceDao != null) {
            return this._managedTriggerRuleOccurrenceDao;
        }
        synchronized (this) {
            if (this._managedTriggerRuleOccurrenceDao == null) {
                this._managedTriggerRuleOccurrenceDao = new ManagedTriggerRuleOccurrenceDao_Impl(this);
            }
            managedTriggerRuleOccurrenceDao = this._managedTriggerRuleOccurrenceDao;
        }
        return managedTriggerRuleOccurrenceDao;
    }
}
