package com.nozbe.watermelondb.jsi;

import android.util.Log;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.module.annotations.ReactModule;

/* JADX INFO: loaded from: classes5.dex */
@ReactModule(name = WatermelonDBJSIModule.NAME)
public class WatermelonDBJSIModule extends ReactContextBaseJavaModule {
    public static final String NAME = "WMDatabaseJSIBridge";
    ReactApplicationContext reactContext;

    public WatermelonDBJSIModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
        this.reactContext = reactApplicationContext;
    }

    @Override // com.facebook.react.bridge.NativeModule
    public String getName() {
        return NAME;
    }

    @ReactMethod(isBlockingSynchronousMethod = true)
    public boolean install() {
        try {
            JSIInstaller.install(getReactApplicationContext(), getReactApplicationContext().getJavaScriptContextHolder().getContext());
            Log.i(NAME, "Successfully installed Watermelon DB JSI Bindings!");
            return true;
        } catch (Exception e) {
            Log.e(NAME, "Failed to install Watermelon DB JSI Bindings!", e);
            return false;
        }
    }
}
