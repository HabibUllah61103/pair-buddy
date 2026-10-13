package com.reactnativecommunity.netinfo;

import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableMap;

/* JADX INFO: loaded from: classes5.dex */
public class NetInfoModule extends NativeRNCNetInfoSpec {
    private NetInfoModuleImpl implementation;

    @Override // com.reactnativecommunity.netinfo.NativeRNCNetInfoSpec
    @ReactMethod
    public void configure(ReadableMap readableMap) {
    }

    NetInfoModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
        this.implementation = new NetInfoModuleImpl(reactApplicationContext);
    }

    @Override // com.reactnativecommunity.netinfo.NativeRNCNetInfoSpec, com.facebook.react.bridge.NativeModule
    public String getName() {
        return "RNCNetInfo";
    }

    @Override // com.reactnativecommunity.netinfo.NativeRNCNetInfoSpec
    @ReactMethod
    public void getCurrentState(String str, Promise promise) {
        this.implementation.getCurrentState(str, promise);
    }

    @Override // com.reactnativecommunity.netinfo.NativeRNCNetInfoSpec
    @ReactMethod
    public void addListener(String str) {
        this.implementation.addListener(str);
    }

    @Override // com.reactnativecommunity.netinfo.NativeRNCNetInfoSpec
    @ReactMethod
    public void removeListeners(double d) {
        this.implementation.removeListeners(d);
    }

    @Override // com.facebook.react.bridge.NativeModule
    public void onCatalystInstanceDestroy() {
        this.implementation.onCatalystInstanceDestroy();
    }

    @Override // com.facebook.react.bridge.BaseJavaModule, com.facebook.react.bridge.NativeModule, com.facebook.react.turbomodule.core.interfaces.TurboModule
    public void initialize() {
        this.implementation.initialize();
    }
}
