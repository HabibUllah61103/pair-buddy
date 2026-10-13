package com.nozbe.watermelondb.jsi;

/* JADX INFO: loaded from: classes5.dex */
public class WatermelonJSI {
    public static void onTrimMemory(int i) {
    }

    public static void provideSyncJson(int i, byte[] bArr) {
        JSIInstaller.provideSyncJson(i, bArr);
    }

    public static void onCatalystInstanceDestroy() {
        JSIInstaller.destroy();
    }
}
