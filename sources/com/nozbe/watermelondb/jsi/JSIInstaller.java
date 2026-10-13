package com.nozbe.watermelondb.jsi;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
class JSIInstaller {
    private static Context context;

    static native void destroy();

    private native void installBinding(long j);

    static native void provideSyncJson(int i, byte[] bArr);

    JSIInstaller() {
    }

    static void install(Context context2, long j) {
        context = context2;
        new JSIInstaller().installBinding(j);
        _resolveDatabasePath("");
    }

    static String _resolveDatabasePath(String str) {
        return context.getDatabasePath(str + ".db").getPath().replace("/databases", "");
    }

    static {
        System.loadLibrary("watermelondb-jsi");
    }
}
