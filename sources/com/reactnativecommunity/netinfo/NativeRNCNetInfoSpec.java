package com.reactnativecommunity.netinfo;

import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.turbomodule.core.interfaces.TurboModule;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public abstract class NativeRNCNetInfoSpec extends ReactContextBaseJavaModule implements TurboModule {
    public static final String NAME = "RNCNetInfo";

    @ReactMethod
    public abstract void addListener(String str);

    @ReactMethod
    public abstract void configure(ReadableMap readableMap);

    @ReactMethod
    public abstract void getCurrentState(@Nullable String str, Promise promise);

    @ReactMethod
    public abstract void removeListeners(double d);

    public NativeRNCNetInfoSpec(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
    }

    @Override // com.facebook.react.bridge.NativeModule
    @Nonnull
    public String getName() {
        return "RNCNetInfo";
    }
}
