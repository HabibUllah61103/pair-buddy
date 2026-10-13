package com.superwall.sdk.storage.core_data.entities;

import android.database.Cursor;
import androidx.room.CoroutinesRoom;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.superwall.sdk.storage.core_data.Converters;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.concurrent.Callable;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes6.dex */
public final class ManagedTriggerRuleOccurrenceDao_Impl implements ManagedTriggerRuleOccurrenceDao {
    private final Converters __converters = new Converters();
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<ManagedTriggerRuleOccurrence> __insertionAdapterOfManagedTriggerRuleOccurrence;
    private final SharedSQLiteStatement __preparedStmtOfDeleteAll;

    public ManagedTriggerRuleOccurrenceDao_Impl(final RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfManagedTriggerRuleOccurrence = new EntityInsertionAdapter<ManagedTriggerRuleOccurrence>(__db) { // from class: com.superwall.sdk.storage.core_data.entities.ManagedTriggerRuleOccurrenceDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            protected String createQuery() {
                return "INSERT OR REPLACE INTO `ManagedTriggerRuleOccurrence` (`id`,`createdAt`,`occurrenceKey`) VALUES (?,?,?)";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityInsertionAdapter
            public void bind(final SupportSQLiteStatement statement, final ManagedTriggerRuleOccurrence entity) {
                if (entity.getId() == null) {
                    statement.bindNull(1);
                } else {
                    statement.bindLong(1, entity.getId().intValue());
                }
                Long timestamp = ManagedTriggerRuleOccurrenceDao_Impl.this.__converters.toTimestamp(entity.getCreatedAt());
                if (timestamp == null) {
                    statement.bindNull(2);
                } else {
                    statement.bindLong(2, timestamp.longValue());
                }
                statement.bindString(3, entity.getOccurrenceKey());
            }
        };
        this.__preparedStmtOfDeleteAll = new SharedSQLiteStatement(__db) { // from class: com.superwall.sdk.storage.core_data.entities.ManagedTriggerRuleOccurrenceDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM ManagedTriggerRuleOccurrence";
            }
        };
    }

    @Override // com.superwall.sdk.storage.core_data.entities.ManagedTriggerRuleOccurrenceDao
    public Object insert(final ManagedTriggerRuleOccurrence eventData, final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.superwall.sdk.storage.core_data.entities.ManagedTriggerRuleOccurrenceDao_Impl.3
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                ManagedTriggerRuleOccurrenceDao_Impl.this.__db.beginTransaction();
                try {
                    ManagedTriggerRuleOccurrenceDao_Impl.this.__insertionAdapterOfManagedTriggerRuleOccurrence.insert(eventData);
                    ManagedTriggerRuleOccurrenceDao_Impl.this.__db.setTransactionSuccessful();
                    return Unit.INSTANCE;
                } finally {
                    ManagedTriggerRuleOccurrenceDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.superwall.sdk.storage.core_data.entities.ManagedTriggerRuleOccurrenceDao
    public Object deleteAll(final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.superwall.sdk.storage.core_data.entities.ManagedTriggerRuleOccurrenceDao_Impl.4
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                SupportSQLiteStatement supportSQLiteStatementAcquire = ManagedTriggerRuleOccurrenceDao_Impl.this.__preparedStmtOfDeleteAll.acquire();
                try {
                    ManagedTriggerRuleOccurrenceDao_Impl.this.__db.beginTransaction();
                    try {
                        supportSQLiteStatementAcquire.executeUpdateDelete();
                        ManagedTriggerRuleOccurrenceDao_Impl.this.__db.setTransactionSuccessful();
                        Unit unit = Unit.INSTANCE;
                        ManagedTriggerRuleOccurrenceDao_Impl.this.__db.endTransaction();
                        ManagedTriggerRuleOccurrenceDao_Impl.this.__preparedStmtOfDeleteAll.release(supportSQLiteStatementAcquire);
                        return unit;
                    } catch (Throwable th) {
                        ManagedTriggerRuleOccurrenceDao_Impl.this.__db.endTransaction();
                        throw th;
                    }
                } catch (Throwable th2) {
                    ManagedTriggerRuleOccurrenceDao_Impl.this.__preparedStmtOfDeleteAll.release(supportSQLiteStatementAcquire);
                    throw th2;
                }
            }
        }, $completion);
    }

    @Override // com.superwall.sdk.storage.core_data.entities.ManagedTriggerRuleOccurrenceDao
    public Object getManagedTriggerRuleOccurrencesByKey(final String key, final Continuation<? super List<ManagedTriggerRuleOccurrence>> $completion) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM ManagedTriggerRuleOccurrence WHERE occurrenceKey = ?", 1);
        roomSQLiteQueryAcquire.bindString(1, key);
        return CoroutinesRoom.execute(this.__db, true, DBUtil.createCancellationSignal(), new Callable<List<ManagedTriggerRuleOccurrence>>() { // from class: com.superwall.sdk.storage.core_data.entities.ManagedTriggerRuleOccurrenceDao_Impl.5
            @Override // java.util.concurrent.Callable
            public List<ManagedTriggerRuleOccurrence> call() throws Exception {
                ManagedTriggerRuleOccurrenceDao_Impl.this.__db.beginTransaction();
                try {
                    Cursor cursorQuery = DBUtil.query(ManagedTriggerRuleOccurrenceDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                    try {
                        int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
                        int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "createdAt");
                        int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "occurrenceKey");
                        ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                        while (cursorQuery.moveToNext()) {
                            Integer numValueOf = cursorQuery.isNull(columnIndexOrThrow) ? null : Integer.valueOf(cursorQuery.getInt(columnIndexOrThrow));
                            Long lValueOf = cursorQuery.isNull(columnIndexOrThrow2) ? null : Long.valueOf(cursorQuery.getLong(columnIndexOrThrow2));
                            Date date = lValueOf == null ? null : ManagedTriggerRuleOccurrenceDao_Impl.this.__converters.toDate(lValueOf.longValue());
                            if (date == null) {
                                throw new IllegalStateException("Expected NON-NULL 'java.util.Date', but it was NULL.");
                            }
                            arrayList.add(new ManagedTriggerRuleOccurrence(numValueOf, date, cursorQuery.getString(columnIndexOrThrow3)));
                        }
                        ManagedTriggerRuleOccurrenceDao_Impl.this.__db.setTransactionSuccessful();
                        cursorQuery.close();
                        roomSQLiteQueryAcquire.release();
                        ManagedTriggerRuleOccurrenceDao_Impl.this.__db.endTransaction();
                        return arrayList;
                    } catch (Throwable th) {
                        cursorQuery.close();
                        roomSQLiteQueryAcquire.release();
                        throw th;
                    }
                } catch (Throwable th2) {
                    ManagedTriggerRuleOccurrenceDao_Impl.this.__db.endTransaction();
                    throw th2;
                }
            }
        }, $completion);
    }

    @Override // com.superwall.sdk.storage.core_data.entities.ManagedTriggerRuleOccurrenceDao
    public Object getManagedTriggerRuleOccurrencesSinceDate(final Date date, final String key, final Continuation<? super List<ManagedTriggerRuleOccurrence>> $completion) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM ManagedTriggerRuleOccurrence WHERE createdAt >= ? AND occurrenceKey = ?", 2);
        Long timestamp = this.__converters.toTimestamp(date);
        if (timestamp == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindLong(1, timestamp.longValue());
        }
        roomSQLiteQueryAcquire.bindString(2, key);
        return CoroutinesRoom.execute(this.__db, true, DBUtil.createCancellationSignal(), new Callable<List<ManagedTriggerRuleOccurrence>>() { // from class: com.superwall.sdk.storage.core_data.entities.ManagedTriggerRuleOccurrenceDao_Impl.6
            @Override // java.util.concurrent.Callable
            public List<ManagedTriggerRuleOccurrence> call() throws Exception {
                ManagedTriggerRuleOccurrenceDao_Impl.this.__db.beginTransaction();
                try {
                    Cursor cursorQuery = DBUtil.query(ManagedTriggerRuleOccurrenceDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                    try {
                        int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
                        int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "createdAt");
                        int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "occurrenceKey");
                        ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                        while (cursorQuery.moveToNext()) {
                            Integer numValueOf = cursorQuery.isNull(columnIndexOrThrow) ? null : Integer.valueOf(cursorQuery.getInt(columnIndexOrThrow));
                            Long lValueOf = cursorQuery.isNull(columnIndexOrThrow2) ? null : Long.valueOf(cursorQuery.getLong(columnIndexOrThrow2));
                            Date date2 = lValueOf == null ? null : ManagedTriggerRuleOccurrenceDao_Impl.this.__converters.toDate(lValueOf.longValue());
                            if (date2 == null) {
                                throw new IllegalStateException("Expected NON-NULL 'java.util.Date', but it was NULL.");
                            }
                            arrayList.add(new ManagedTriggerRuleOccurrence(numValueOf, date2, cursorQuery.getString(columnIndexOrThrow3)));
                        }
                        ManagedTriggerRuleOccurrenceDao_Impl.this.__db.setTransactionSuccessful();
                        cursorQuery.close();
                        roomSQLiteQueryAcquire.release();
                        ManagedTriggerRuleOccurrenceDao_Impl.this.__db.endTransaction();
                        return arrayList;
                    } catch (Throwable th) {
                        cursorQuery.close();
                        roomSQLiteQueryAcquire.release();
                        throw th;
                    }
                } catch (Throwable th2) {
                    ManagedTriggerRuleOccurrenceDao_Impl.this.__db.endTransaction();
                    throw th2;
                }
            }
        }, $completion);
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }
}
