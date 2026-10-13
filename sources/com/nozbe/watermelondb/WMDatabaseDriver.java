package com.nozbe.watermelondb;

import android.content.Context;
import android.database.Cursor;
import android.os.Trace;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.WritableArray;
import com.facebook.react.bridge.WritableMap;
import com.nozbe.watermelondb.utils.MigrationSet;
import com.nozbe.watermelondb.utils.Pair;
import com.nozbe.watermelondb.utils.Schema;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public class WMDatabaseDriver {
    private final Map<String, List<String>> cachedRecords;
    private final WMDatabase database;
    private final Logger log;

    public WMDatabaseDriver(Context context, String str) {
        this(context, str, false);
    }

    public WMDatabaseDriver(Context context, String str, int i, boolean z) {
        this(context, str, z);
        SchemaCompatibility schemaCompatibilityIsCompatible = isCompatible(i);
        if (schemaCompatibilityIsCompatible instanceof SchemaCompatibility.NeedsSetup) {
            throw new SchemaNeededError();
        }
        if (schemaCompatibilityIsCompatible instanceof SchemaCompatibility.NeedsMigration) {
            throw new MigrationNeededError(((SchemaCompatibility.NeedsMigration) schemaCompatibilityIsCompatible).fromVersion);
        }
    }

    public WMDatabaseDriver(Context context, String str, Schema schema, boolean z) {
        this(context, str, z);
        unsafeResetDatabase(schema);
    }

    public WMDatabaseDriver(Context context, String str, MigrationSet migrationSet, boolean z) {
        this(context, str, z);
        migrate(migrationSet);
    }

    public WMDatabaseDriver(Context context, String str, boolean z) {
        WMDatabase wMDatabaseBuildDatabase;
        if (z) {
            wMDatabaseBuildDatabase = WMDatabase.getInstance(str, context, 805306368);
        } else {
            wMDatabaseBuildDatabase = WMDatabase.buildDatabase(str, context, 805306368);
        }
        this.database = wMDatabaseBuildDatabase;
        this.log = null;
        this.cachedRecords = new HashMap();
    }

    public Object find(String str, String str2) {
        if (isCached(str, str2)) {
            return str2;
        }
        Cursor cursorRawQuery = this.database.rawQuery("select * from `" + str + "` where id == ? limit 1", new Object[]{str2});
        try {
            if (cursorRawQuery.getCount() <= 0) {
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return null;
            }
            markAsCached(str, str2);
            cursorRawQuery.moveToFirst();
            WritableMap writableMapCursorToMap = DatabaseUtils.cursorToMap(cursorRawQuery);
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            return writableMapCursorToMap;
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                try {
                    cursorRawQuery.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public WritableArray cachedQuery(String str, String str2, Object[] objArr) {
        WritableArray writableArrayCreateArray = Arguments.createArray();
        Cursor cursorRawQuery = this.database.rawQuery(str2, objArr);
        try {
            if (cursorRawQuery.getCount() > 0 && DatabaseUtils.arrayContains(cursorRawQuery.getColumnNames(), "id")) {
                int columnIndex = cursorRawQuery.getColumnIndex("id");
                while (cursorRawQuery.moveToNext()) {
                    String string = cursorRawQuery.getString(columnIndex);
                    if (isCached(str, string)) {
                        writableArrayCreateArray.pushString(string);
                    } else {
                        markAsCached(str, string);
                        writableArrayCreateArray.pushMap(DatabaseUtils.cursorToMap(cursorRawQuery));
                    }
                }
            }
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            return writableArrayCreateArray;
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                try {
                    cursorRawQuery.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public WritableArray queryIds(String str, Object[] objArr) {
        WritableArray writableArrayCreateArray = Arguments.createArray();
        Cursor cursorRawQuery = this.database.rawQuery(str, objArr);
        try {
            if (cursorRawQuery.getCount() > 0 && DatabaseUtils.arrayContains(cursorRawQuery.getColumnNames(), "id")) {
                while (cursorRawQuery.moveToNext()) {
                    writableArrayCreateArray.pushString(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("id")));
                }
            }
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            return writableArrayCreateArray;
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                try {
                    cursorRawQuery.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public WritableArray unsafeQueryRaw(String str, Object[] objArr) {
        WritableArray writableArrayCreateArray = Arguments.createArray();
        Cursor cursorRawQuery = this.database.rawQuery(str, objArr);
        try {
            if (cursorRawQuery.getCount() > 0) {
                while (cursorRawQuery.moveToNext()) {
                    writableArrayCreateArray.pushMap(DatabaseUtils.cursorToMap(cursorRawQuery));
                }
            }
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            return writableArrayCreateArray;
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                try {
                    cursorRawQuery.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public int count(String str, Object[] objArr) {
        return this.database.count(str, objArr);
    }

    public String getLocal(String str) {
        return this.database.getFromLocalStorage(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void batch(final ReadableArray readableArray) {
        final ArrayList<Pair> arrayList = new ArrayList();
        final ArrayList<Pair> arrayList2 = new ArrayList();
        Trace.beginSection("Batch");
        try {
            this.database.transaction(new WMDatabase.TransactionFunction() { // from class: com.nozbe.watermelondb.WMDatabaseDriver$$ExternalSyntheticLambda1
                @Override // com.nozbe.watermelondb.WMDatabase.TransactionFunction
                public final void applyTransactionFunction() {
                    this.f$0.lambda$batch$0(readableArray, arrayList, arrayList2);
                }
            });
            Trace.endSection();
            Trace.beginSection("updateCaches");
            for (Pair pair : arrayList) {
                markAsCached((String) pair.first, (String) pair.second);
            }
            for (Pair pair2 : arrayList2) {
                removeFromCache((String) pair2.first, (String) pair2.second);
            }
        } finally {
            Trace.endSection();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$batch$0(ReadableArray readableArray, List list, List list2) {
        for (int i = 0; i < readableArray.size(); i++) {
            ReadableArray array = readableArray.getArray(i);
            int i2 = array.getInt(0);
            String string = i2 != 0 ? array.getString(1) : "";
            String string2 = array.getString(2);
            ReadableArray array2 = array.getArray(3);
            for (int i3 = 0; i3 < array2.size(); i3++) {
                Object[] array3 = array2.getArray(i3).toArrayList().toArray();
                this.database.execute(string2, array3);
                if (i2 != 0) {
                    String str = (String) array3[0];
                    if (i2 == 1) {
                        list.add(Pair.create(string, str));
                    } else if (i2 == -1) {
                        list2.add(Pair.create(string, str));
                    }
                }
            }
        }
    }

    private void markAsCached(String str, String str2) {
        List<String> arrayList = this.cachedRecords.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        arrayList.add(str2);
        this.cachedRecords.put(str, arrayList);
    }

    private boolean isCached(String str, String str2) {
        List<String> list = this.cachedRecords.get(str);
        return list != null && list.contains(str2);
    }

    private void removeFromCache(String str, String str2) {
        List<String> list = this.cachedRecords.get(str);
        if (list != null) {
            list.remove(str2);
            this.cachedRecords.put(str, list);
        }
    }

    public void close() {
        this.database.close();
    }

    private void migrate(final MigrationSet migrationSet) {
        int userVersion = this.database.getUserVersion();
        if (userVersion != migrationSet.from) {
            throw new IllegalArgumentException("Incompatible migration set applied. DB: " + userVersion + ", migration: " + migrationSet.from);
        }
        this.database.transaction(new WMDatabase.TransactionFunction() { // from class: com.nozbe.watermelondb.WMDatabaseDriver$$ExternalSyntheticLambda0
            @Override // com.nozbe.watermelondb.WMDatabase.TransactionFunction
            public final void applyTransactionFunction() {
                this.f$0.lambda$migrate$1(migrationSet);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$migrate$1(MigrationSet migrationSet) {
        this.database.unsafeExecuteStatements(migrationSet.sql);
        this.database.setUserVersion(migrationSet.to);
    }

    public void unsafeResetDatabase(final Schema schema) {
        Logger logger = this.log;
        if (logger != null) {
            logger.info("Unsafe reset database");
        }
        this.database.unsafeDestroyEverything();
        this.cachedRecords.clear();
        this.database.transaction(new WMDatabase.TransactionFunction() { // from class: com.nozbe.watermelondb.WMDatabaseDriver$$ExternalSyntheticLambda2
            @Override // com.nozbe.watermelondb.WMDatabase.TransactionFunction
            public final void applyTransactionFunction() {
                this.f$0.lambda$unsafeResetDatabase$2(schema);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$unsafeResetDatabase$2(Schema schema) {
        this.database.unsafeExecuteStatements(schema.sql);
        this.database.setUserVersion(schema.version);
    }

    private static class SchemaCompatibility {

        static class Compatible extends SchemaCompatibility {
            Compatible() {
                super();
            }
        }

        private SchemaCompatibility() {
        }

        static class NeedsSetup extends SchemaCompatibility {
            NeedsSetup() {
                super();
            }
        }

        static class NeedsMigration extends SchemaCompatibility {
            final int fromVersion;

            NeedsMigration(int i) {
                super();
                this.fromVersion = i;
            }
        }
    }

    private SchemaCompatibility isCompatible(int i) {
        int userVersion = this.database.getUserVersion();
        if (userVersion == i) {
            return new SchemaCompatibility.Compatible();
        }
        if (userVersion == 0) {
            return new SchemaCompatibility.NeedsSetup();
        }
        if (userVersion < i) {
            return new SchemaCompatibility.NeedsMigration(userVersion);
        }
        this.log.info("com.nozbe.watermelondb.Database has newer version (" + userVersion + ") than what the app supports (" + i + "). Will reset database.");
        return new SchemaCompatibility.NeedsSetup();
    }
}
