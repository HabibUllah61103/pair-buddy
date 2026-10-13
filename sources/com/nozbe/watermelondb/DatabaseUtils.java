package com.nozbe.watermelondb;

import android.database.Cursor;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableMap;

/* JADX INFO: loaded from: classes5.dex */
public class DatabaseUtils {
    public static WritableMap cursorToMap(Cursor cursor) {
        WritableMap writableMapCreateMap = Arguments.createMap();
        for (int i = 0; i < cursor.getColumnCount(); i++) {
            int type = cursor.getType(i);
            if (type == 0) {
                writableMapCreateMap.putNull(cursor.getColumnName(i));
            } else if (type == 1 || type == 2) {
                writableMapCreateMap.putDouble(cursor.getColumnName(i), cursor.getDouble(i));
            } else if (type == 3) {
                writableMapCreateMap.putString(cursor.getColumnName(i), cursor.getString(i));
            } else {
                writableMapCreateMap.putString(cursor.getColumnName(i), "");
            }
        }
        return writableMapCreateMap;
    }

    public static <T> boolean arrayContains(T[] tArr, T t) {
        if (t == null) {
            for (T t2 : tArr) {
                if (t2 == null) {
                    return true;
                }
            }
        } else {
            for (T t3 : tArr) {
                if (t3 == t || t.equals(t3)) {
                    return true;
                }
            }
        }
        return false;
    }
}
