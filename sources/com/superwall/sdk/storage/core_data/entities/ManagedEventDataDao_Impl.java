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
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.concurrent.Callable;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes6.dex */
public final class ManagedEventDataDao_Impl implements ManagedEventDataDao {
    private final Converters __converters = new Converters();
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<ManagedEventData> __insertionAdapterOfManagedEventData;
    private final SharedSQLiteStatement __preparedStmtOfDeleteAll;

    public ManagedEventDataDao_Impl(final RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfManagedEventData = new EntityInsertionAdapter<ManagedEventData>(__db) { // from class: com.superwall.sdk.storage.core_data.entities.ManagedEventDataDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            protected String createQuery() {
                return "INSERT OR REPLACE INTO `ManagedEventData` (`id`,`createdAt`,`name`,`parameters`) VALUES (?,?,?,?)";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityInsertionAdapter
            public void bind(final SupportSQLiteStatement statement, final ManagedEventData entity) {
                statement.bindString(1, entity.getId());
                Long timestamp = ManagedEventDataDao_Impl.this.__converters.toTimestamp(entity.getCreatedAt());
                if (timestamp == null) {
                    statement.bindNull(2);
                } else {
                    statement.bindLong(2, timestamp.longValue());
                }
                statement.bindString(3, entity.getName());
                statement.bindString(4, ManagedEventDataDao_Impl.this.__converters.fromMap(entity.getParameters()));
            }
        };
        this.__preparedStmtOfDeleteAll = new SharedSQLiteStatement(__db) { // from class: com.superwall.sdk.storage.core_data.entities.ManagedEventDataDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM ManagedEventData";
            }
        };
    }

    @Override // com.superwall.sdk.storage.core_data.entities.ManagedEventDataDao
    public Object insert(final ManagedEventData eventData, final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.superwall.sdk.storage.core_data.entities.ManagedEventDataDao_Impl.3
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                ManagedEventDataDao_Impl.this.__db.beginTransaction();
                try {
                    ManagedEventDataDao_Impl.this.__insertionAdapterOfManagedEventData.insert(eventData);
                    ManagedEventDataDao_Impl.this.__db.setTransactionSuccessful();
                    return Unit.INSTANCE;
                } finally {
                    ManagedEventDataDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.superwall.sdk.storage.core_data.entities.ManagedEventDataDao
    public Object deleteAll(final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.superwall.sdk.storage.core_data.entities.ManagedEventDataDao_Impl.4
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                SupportSQLiteStatement supportSQLiteStatementAcquire = ManagedEventDataDao_Impl.this.__preparedStmtOfDeleteAll.acquire();
                try {
                    ManagedEventDataDao_Impl.this.__db.beginTransaction();
                    try {
                        supportSQLiteStatementAcquire.executeUpdateDelete();
                        ManagedEventDataDao_Impl.this.__db.setTransactionSuccessful();
                        Unit unit = Unit.INSTANCE;
                        ManagedEventDataDao_Impl.this.__db.endTransaction();
                        ManagedEventDataDao_Impl.this.__preparedStmtOfDeleteAll.release(supportSQLiteStatementAcquire);
                        return unit;
                    } catch (Throwable th) {
                        ManagedEventDataDao_Impl.this.__db.endTransaction();
                        throw th;
                    }
                } catch (Throwable th2) {
                    ManagedEventDataDao_Impl.this.__preparedStmtOfDeleteAll.release(supportSQLiteStatementAcquire);
                    throw th2;
                }
            }
        }, $completion);
    }

    @Override // com.superwall.sdk.storage.core_data.entities.ManagedEventDataDao
    public Object getLastSavedEvent(final String name, final Date date, final Continuation<? super ManagedEventData> $completion) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("\n        SELECT * FROM ManagedEventData \n        WHERE name = ? \n        AND (? IS NULL OR createdAt < ?) \n        ORDER BY createdAt DESC \n        LIMIT 1\n    ", 3);
        roomSQLiteQueryAcquire.bindString(1, name);
        Long timestamp = this.__converters.toTimestamp(date);
        if (timestamp == null) {
            roomSQLiteQueryAcquire.bindNull(2);
        } else {
            roomSQLiteQueryAcquire.bindLong(2, timestamp.longValue());
        }
        Long timestamp2 = this.__converters.toTimestamp(date);
        if (timestamp2 == null) {
            roomSQLiteQueryAcquire.bindNull(3);
        } else {
            roomSQLiteQueryAcquire.bindLong(3, timestamp2.longValue());
        }
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<ManagedEventData>() { // from class: com.superwall.sdk.storage.core_data.entities.ManagedEventDataDao_Impl.5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public ManagedEventData call() throws Exception {
                ManagedEventData managedEventData = null;
                Date date2 = null;
                Cursor cursorQuery = DBUtil.query(ManagedEventDataDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "createdAt");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "parameters");
                    if (cursorQuery.moveToFirst()) {
                        String string = cursorQuery.getString(columnIndexOrThrow);
                        Long lValueOf = cursorQuery.isNull(columnIndexOrThrow2) ? null : Long.valueOf(cursorQuery.getLong(columnIndexOrThrow2));
                        if (lValueOf != null) {
                            date2 = ManagedEventDataDao_Impl.this.__converters.toDate(lValueOf.longValue());
                        }
                        if (date2 == null) {
                            throw new IllegalStateException("Expected NON-NULL 'java.util.Date', but it was NULL.");
                        }
                        managedEventData = new ManagedEventData(string, date2, cursorQuery.getString(columnIndexOrThrow3), ManagedEventDataDao_Impl.this.__converters.toMap(cursorQuery.getString(columnIndexOrThrow4)));
                    }
                    cursorQuery.close();
                    roomSQLiteQueryAcquire.release();
                    return managedEventData;
                } catch (Throwable th) {
                    cursorQuery.close();
                    roomSQLiteQueryAcquire.release();
                    throw th;
                }
            }
        }, $completion);
    }

    @Override // com.superwall.sdk.storage.core_data.entities.ManagedEventDataDao
    public Object countEventsByNameInPeriod(final String name, final Date startDate, final Date endDate, final Continuation<? super Integer> $completion) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("\n        SELECT COUNT(*) FROM ManagedEventData \n        WHERE name = ? \n        AND createdAt BETWEEN ? AND ?\n        ", 3);
        roomSQLiteQueryAcquire.bindString(1, name);
        Long timestamp = this.__converters.toTimestamp(startDate);
        if (timestamp == null) {
            roomSQLiteQueryAcquire.bindNull(2);
        } else {
            roomSQLiteQueryAcquire.bindLong(2, timestamp.longValue());
        }
        Long timestamp2 = this.__converters.toTimestamp(endDate);
        if (timestamp2 == null) {
            roomSQLiteQueryAcquire.bindNull(3);
        } else {
            roomSQLiteQueryAcquire.bindLong(3, timestamp2.longValue());
        }
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<Integer>() { // from class: com.superwall.sdk.storage.core_data.entities.ManagedEventDataDao_Impl.6
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Integer call() throws Exception {
                int iValueOf;
                Cursor cursorQuery = DBUtil.query(ManagedEventDataDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    if (cursorQuery.moveToFirst()) {
                        iValueOf = Integer.valueOf(cursorQuery.getInt(0));
                    } else {
                        iValueOf = 0;
                    }
                    return iValueOf;
                } finally {
                    cursorQuery.close();
                    roomSQLiteQueryAcquire.release();
                }
            }
        }, $completion);
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }
}
