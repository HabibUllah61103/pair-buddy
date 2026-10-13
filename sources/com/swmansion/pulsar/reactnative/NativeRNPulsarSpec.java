package com.swmansion.pulsar.reactnative;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.turbomodule.core.interfaces.TurboModule;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes6.dex */
public abstract class NativeRNPulsarSpec extends ReactContextBaseJavaModule implements TurboModule {
    public static final String NAME = "RNPulsar";

    @ReactMethod(isBlockingSynchronousMethod = true)
    public abstract double PatternComposer_parsePattern(ReadableMap readableMap);

    @ReactMethod
    public abstract void PatternComposer_play(double d);

    @ReactMethod
    public abstract void PatternComposer_release(double d);

    @ReactMethod
    public abstract void PatternComposer_stop(double d);

    @ReactMethod
    public abstract void Pulsar_clearCache();

    @ReactMethod
    public abstract void Pulsar_enableCache(boolean z);

    @ReactMethod
    public abstract void Pulsar_enableHaptics(boolean z);

    @ReactMethod
    public abstract void Pulsar_enableImpulseCompositionMode(boolean z);

    @ReactMethod
    public abstract void Pulsar_enableSound(boolean z);

    @ReactMethod
    public abstract void Pulsar_forceHapticsSupportLevel(double d);

    @ReactMethod(isBlockingSynchronousMethod = true)
    public abstract double Pulsar_hapticSupport();

    @ReactMethod
    public abstract void Pulsar_play(String str);

    @ReactMethod
    public abstract void Pulsar_preloadPresets(ReadableArray readableArray);

    @ReactMethod
    public abstract void Pulsar_setRealtimeComposerStrategy(double d);

    @ReactMethod
    public abstract void Pulsar_shutDownEngine();

    @ReactMethod
    public abstract void Pulsar_stopHaptics();

    @ReactMethod(isBlockingSynchronousMethod = true)
    public abstract boolean RealtimeComposer_isActive();

    @ReactMethod
    public abstract void RealtimeComposer_playDiscrete(double d, double d2);

    @ReactMethod
    public abstract void RealtimeComposer_set(double d, double d2, boolean z);

    @ReactMethod
    public abstract void RealtimeComposer_start();

    @ReactMethod
    public abstract void RealtimeComposer_stop();

    public NativeRNPulsarSpec(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
    }

    @Override // com.facebook.react.bridge.NativeModule
    @Nonnull
    public String getName() {
        return "RNPulsar";
    }
}
