package com.nozbe.watermelondb;

import android.os.Trace;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.WritableArray;
import com.facebook.react.bridge.WritableMap;
import com.google.android.gms.actions.SearchIntents;
import com.google.firebase.messaging.Constants;
import com.nozbe.watermelondb.utils.MigrationSet;
import com.nozbe.watermelondb.utils.Schema;
import java.lang.reflect.InvocationTargetException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import me.leolin.shortcutbadger.impl.NewHtcHomeBadger;

/* JADX INFO: loaded from: classes5.dex */
public class WMDatabaseBridge extends ReactContextBaseJavaModule {
    public static final String NAME = "WMDatabaseBridge";
    private final Map<Integer, Connection> connections;
    ReactApplicationContext reactContext;

    interface ParamFunction {
        Object applyParamFunction(WMDatabaseDriver wMDatabaseDriver);
    }

    public WMDatabaseBridge(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
        this.connections = new HashMap();
        this.reactContext = reactApplicationContext;
    }

    @Override // com.facebook.react.bridge.NativeModule
    public String getName() {
        return NAME;
    }

    @ReactMethod
    public void initialize(Integer num, String str, int i, boolean z, Promise promise) {
        if (this.connections.containsKey(num)) {
            throw new IllegalStateException("A driver with tag " + num + " already set up");
        }
        WritableMap writableMapCreateMap = Arguments.createMap();
        try {
            this.connections.put(num, new Connection.Connected(new WMDatabaseDriver(this.reactContext, str, i, z)));
            writableMapCreateMap.putString("code", "ok");
            promise.resolve(writableMapCreateMap);
        } catch (MigrationNeededError e) {
            this.connections.put(num, new Connection.Waiting(new ArrayList()));
            writableMapCreateMap.putString("code", "migrations_needed");
            writableMapCreateMap.putInt("databaseVersion", e.databaseVersion);
            promise.resolve(writableMapCreateMap);
        } catch (SchemaNeededError unused) {
            this.connections.put(num, new Connection.Waiting(new ArrayList()));
            writableMapCreateMap.putString("code", "schema_needed");
            promise.resolve(writableMapCreateMap);
        } catch (Exception e2) {
            promise.reject(e2);
        }
    }

    @ReactMethod
    public void setUpWithSchema(Integer num, String str, String str2, int i, boolean z, Promise promise) {
        connectDriver(num.intValue(), new WMDatabaseDriver(this.reactContext, str, new Schema(i, str2), z), promise);
    }

    @ReactMethod
    public void setUpWithMigrations(Integer num, String str, String str2, int i, int i2, boolean z, Promise promise) {
        try {
            connectDriver(num.intValue(), new WMDatabaseDriver(this.reactContext, str, new MigrationSet(i, i2, str2), z), promise);
        } catch (Exception e) {
            disconnectDriver(num.intValue());
            promise.reject(e);
        }
    }

    @ReactMethod
    private void find(int i, final String str, final String str2, Promise promise) throws Throwable {
        lambda$withDriver$8(i, promise, new ParamFunction() { // from class: com.nozbe.watermelondb.WMDatabaseBridge$$ExternalSyntheticLambda3
            @Override // com.nozbe.watermelondb.WMDatabaseBridge.ParamFunction
            public final Object applyParamFunction(WMDatabaseDriver wMDatabaseDriver) {
                return wMDatabaseDriver.find(str, str2);
            }
        }, "find " + str2);
    }

    @ReactMethod
    public void query(int i, final String str, final String str2, final ReadableArray readableArray, Promise promise) throws Throwable {
        lambda$withDriver$8(i, promise, new ParamFunction() { // from class: com.nozbe.watermelondb.WMDatabaseBridge$$ExternalSyntheticLambda0
            @Override // com.nozbe.watermelondb.WMDatabaseBridge.ParamFunction
            public final Object applyParamFunction(WMDatabaseDriver wMDatabaseDriver) {
                return wMDatabaseDriver.cachedQuery(str, str2, readableArray.toArrayList().toArray());
            }
        }, SearchIntents.EXTRA_QUERY);
    }

    @ReactMethod
    public void queryIds(int i, final String str, final ReadableArray readableArray, Promise promise) throws Throwable {
        lambda$withDriver$8(i, promise, new ParamFunction() { // from class: com.nozbe.watermelondb.WMDatabaseBridge$$ExternalSyntheticLambda10
            @Override // com.nozbe.watermelondb.WMDatabaseBridge.ParamFunction
            public final Object applyParamFunction(WMDatabaseDriver wMDatabaseDriver) {
                return wMDatabaseDriver.queryIds(str, readableArray.toArrayList().toArray());
            }
        }, "queryIds");
    }

    @ReactMethod
    public void unsafeQueryRaw(int i, final String str, final ReadableArray readableArray, Promise promise) throws Throwable {
        lambda$withDriver$8(i, promise, new ParamFunction() { // from class: com.nozbe.watermelondb.WMDatabaseBridge$$ExternalSyntheticLambda4
            @Override // com.nozbe.watermelondb.WMDatabaseBridge.ParamFunction
            public final Object applyParamFunction(WMDatabaseDriver wMDatabaseDriver) {
                return wMDatabaseDriver.unsafeQueryRaw(str, readableArray.toArrayList().toArray());
            }
        }, "unsafeQueryRaw");
    }

    @ReactMethod
    public void count(int i, final String str, final ReadableArray readableArray, Promise promise) throws Throwable {
        lambda$withDriver$8(i, promise, new ParamFunction() { // from class: com.nozbe.watermelondb.WMDatabaseBridge$$ExternalSyntheticLambda8
            @Override // com.nozbe.watermelondb.WMDatabaseBridge.ParamFunction
            public final Object applyParamFunction(WMDatabaseDriver wMDatabaseDriver) {
                return Integer.valueOf(wMDatabaseDriver.count(str, readableArray.toArrayList().toArray()));
            }
        }, NewHtcHomeBadger.COUNT);
    }

    @ReactMethod
    public void batch(int i, final ReadableArray readableArray, Promise promise) throws Throwable {
        lambda$withDriver$8(i, promise, new ParamFunction() { // from class: com.nozbe.watermelondb.WMDatabaseBridge$$ExternalSyntheticLambda2
            @Override // com.nozbe.watermelondb.WMDatabaseBridge.ParamFunction
            public final Object applyParamFunction(WMDatabaseDriver wMDatabaseDriver) {
                return WMDatabaseBridge.lambda$batch$5(readableArray, wMDatabaseDriver);
            }
        }, "batch");
    }

    static /* synthetic */ Object lambda$batch$5(ReadableArray readableArray, WMDatabaseDriver wMDatabaseDriver) {
        wMDatabaseDriver.batch(readableArray);
        return true;
    }

    @ReactMethod
    public void unsafeResetDatabase(int i, final String str, final int i2, Promise promise) throws Throwable {
        lambda$withDriver$8(i, promise, new ParamFunction() { // from class: com.nozbe.watermelondb.WMDatabaseBridge$$ExternalSyntheticLambda1
            @Override // com.nozbe.watermelondb.WMDatabaseBridge.ParamFunction
            public final Object applyParamFunction(WMDatabaseDriver wMDatabaseDriver) {
                return WMDatabaseBridge.lambda$unsafeResetDatabase$6(i2, str, wMDatabaseDriver);
            }
        }, "unsafeResetDatabase");
    }

    static /* synthetic */ Object lambda$unsafeResetDatabase$6(int i, String str, WMDatabaseDriver wMDatabaseDriver) {
        wMDatabaseDriver.unsafeResetDatabase(new Schema(i, str));
        return null;
    }

    @ReactMethod
    public void getLocal(int i, final String str, Promise promise) throws Throwable {
        lambda$withDriver$8(i, promise, new ParamFunction() { // from class: com.nozbe.watermelondb.WMDatabaseBridge$$ExternalSyntheticLambda7
            @Override // com.nozbe.watermelondb.WMDatabaseBridge.ParamFunction
            public final Object applyParamFunction(WMDatabaseDriver wMDatabaseDriver) {
                return wMDatabaseDriver.getLocal(str);
            }
        }, "getLocal");
    }

    @ReactMethod(isBlockingSynchronousMethod = true)
    public WritableArray unsafeGetLocalSynchronously(int i, String str) {
        try {
            Connection connection = this.connections.get(Integer.valueOf(i));
            if (connection == null) {
                throw new Exception("No driver with tag " + i + " available");
            }
            if (connection instanceof Connection.Connected) {
                String local = ((Connection.Connected) connection).driver.getLocal(str);
                WritableArray writableArrayCreateArray = Arguments.createArray();
                writableArrayCreateArray.pushString("result");
                writableArrayCreateArray.pushString(local);
                return writableArrayCreateArray;
            }
            if (connection instanceof Connection.Waiting) {
                throw new Exception("Waiting connection unexpected for unsafeGetLocalSynchronously");
            }
            return null;
        } catch (Exception e) {
            WritableArray writableArrayCreateArray2 = Arguments.createArray();
            writableArrayCreateArray2.pushString(Constants.IPC_BUNDLE_KEY_SEND_ERROR);
            writableArrayCreateArray2.pushString(e.getMessage());
            return writableArrayCreateArray2;
        }
    }

    private List<Runnable> getQueue(int i) {
        if (this.connections.containsKey(Integer.valueOf(i))) {
            Connection connection = this.connections.get(Integer.valueOf(i));
            if (connection != null) {
                return connection.getQueue();
            }
            return new ArrayList();
        }
        return new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: withDriver, reason: merged with bridge method [inline-methods] */
    public void lambda$withDriver$8(final int i, Promise promise, final ParamFunction paramFunction, String str) throws Throwable {
        final Promise promise2;
        final String str2;
        Throwable th;
        Exception exc;
        try {
            try {
                Trace.beginSection("WMDatabaseBridge." + str);
                Connection connection = this.connections.get(Integer.valueOf(i));
                try {
                    if (connection == null) {
                        promise.reject(new Exception("No driver with tag " + i + " available"));
                    } else if (connection instanceof Connection.Connected) {
                        Object objApplyParamFunction = paramFunction.applyParamFunction(((Connection.Connected) connection).driver);
                        if (objApplyParamFunction == Void.TYPE) {
                            objApplyParamFunction = true;
                        }
                        promise.resolve(objApplyParamFunction);
                    } else {
                        if (connection instanceof Connection.Waiting) {
                            promise2 = promise;
                            str2 = str;
                            try {
                                connection.getQueue().add(new Runnable() { // from class: com.nozbe.watermelondb.WMDatabaseBridge$$ExternalSyntheticLambda6
                                    @Override // java.lang.Runnable
                                    public final void run() throws Throwable {
                                        this.f$0.lambda$withDriver$8(i, promise2, paramFunction, str2);
                                    }
                                });
                                this.connections.put(Integer.valueOf(i), new Connection.Waiting(connection.getQueue()));
                            } catch (Exception e) {
                                e = e;
                                exc = e;
                                promise2.reject(str2, exc);
                                Trace.endSection();
                            }
                        }
                        Trace.endSection();
                    }
                    Trace.endSection();
                } catch (Exception e2) {
                    exc = e2;
                    promise2 = promise;
                    str2 = str;
                    promise2.reject(str2, exc);
                    Trace.endSection();
                } catch (Throwable th2) {
                    th = th2;
                    Trace.endSection();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                th = th;
                Trace.endSection();
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            promise2 = promise;
            str2 = str;
        } catch (Throwable th4) {
            th = th4;
            th = th;
            Trace.endSection();
            throw th;
        }
    }

    private void connectDriver(int i, WMDatabaseDriver wMDatabaseDriver, Promise promise) {
        List<Runnable> queue = getQueue(i);
        this.connections.put(Integer.valueOf(i), new Connection.Connected(wMDatabaseDriver));
        Iterator<Runnable> it = queue.iterator();
        while (it.hasNext()) {
            it.next().run();
        }
        promise.resolve(true);
    }

    private void disconnectDriver(int i) {
        List<Runnable> queue = getQueue(i);
        this.connections.remove(Integer.valueOf(i));
        Iterator<Runnable> it = queue.iterator();
        while (it.hasNext()) {
            it.next().run();
        }
    }

    @ReactMethod
    public void provideSyncJson(int i, String str, Promise promise) {
        try {
            Class.forName("com.nozbe.watermelondb.jsi.WatermelonJSI").getDeclaredMethod("provideSyncJson", Integer.TYPE, byte[].class).invoke(null, Integer.valueOf(i), str.getBytes());
            promise.resolve(true);
        } catch (Exception e) {
            promise.reject(e);
        }
    }

    @ReactMethod(isBlockingSynchronousMethod = true)
    public WritableArray getRandomBytes(int i) {
        if (i != 256) {
            throw new IllegalStateException("Expected getRandomBytes to be called with 256");
        }
        byte[] bArr = new byte[256];
        new SecureRandom().nextBytes(bArr);
        WritableArray writableArrayCreateArray = Arguments.createArray();
        for (int i2 = 0; i2 < 256; i2++) {
            writableArrayCreateArray.pushInt(Byte.toUnsignedInt(bArr[i2]));
        }
        return writableArrayCreateArray;
    }

    @Override // com.facebook.react.bridge.BaseJavaModule, com.facebook.react.bridge.NativeModule, com.facebook.react.turbomodule.core.interfaces.TurboModule
    public void invalidate() {
        super.invalidate();
        this.reactContext.runOnJSQueueThread(new Runnable() { // from class: com.nozbe.watermelondb.WMDatabaseBridge$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() throws IllegalAccessException, InvocationTargetException {
                Class.forName("com.nozbe.watermelondb.jsi.WatermelonJSI").getDeclaredMethod("onCatalystInstanceDestroy", new Class[0]).invoke(null, new Object[0]);
            }
        });
    }

    @Override // com.facebook.react.bridge.NativeModule
    @Deprecated
    public void onCatalystInstanceDestroy() {
        super.onCatalystInstanceDestroy();
        this.reactContext.getCatalystInstance().getReactQueueConfiguration().getJSQueueThread().runOnQueue(new Runnable() { // from class: com.nozbe.watermelondb.WMDatabaseBridge$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() throws IllegalAccessException, InvocationTargetException {
                Class.forName("com.nozbe.watermelondb.jsi.WatermelonJSI").getDeclaredMethod("onCatalystInstanceDestroy", new Class[0]).invoke(null, new Object[0]);
            }
        });
    }
}
