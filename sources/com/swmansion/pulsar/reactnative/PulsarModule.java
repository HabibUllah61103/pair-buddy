package com.swmansion.pulsar.reactnative;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.module.annotations.ReactModule;
import com.reactcommunity.rndatetimepicker.RNConstants;
import com.swmansion.pulsar.Pulsar;
import com.swmansion.pulsar.composers.PatternComposer;
import com.swmansion.pulsar.composers.RealtimeComposer;
import com.swmansion.pulsar.types.CompatibilityMode;
import com.swmansion.pulsar.types.ConfigPoint;
import com.swmansion.pulsar.types.ContinuousPattern;
import com.swmansion.pulsar.types.PatternData;
import com.swmansion.pulsar.types.Preset;
import com.swmansion.pulsar.types.RealtimeComposerStrategy;
import com.swmansion.pulsar.types.ValuePoint;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PulsarModule.kt */
/* JADX INFO: loaded from: classes6.dex */
@ReactModule(name = "RNPulsar")
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 92\u00020\u0001:\u00019B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0012\u0010\u0013\u001a\u00020\u00102\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u0017H\u0016J\u0010\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0010\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0010\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\b\u0010\u001f\u001a\u00020\u0010H\u0016J\b\u0010 \u001a\u00020\u0010H\u0016J\b\u0010!\u001a\u00020\u0010H\u0016J\u0010\u0010\"\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0010\u0010#\u001a\u00020\u00102\u0006\u0010$\u001a\u00020\u0017H\u0016J\u0010\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(H\u0002J\u0012\u0010)\u001a\u00020\u00172\b\u0010'\u001a\u0004\u0018\u00010(H\u0016J\u0010\u0010*\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u0017H\u0016J\u0010\u0010,\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u0017H\u0016J\u0010\u0010-\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u0017H\u0016J\b\u0010.\u001a\u00020\u0010H\u0016J \u0010/\u001a\u00020\u00102\u0006\u00100\u001a\u00020\u00172\u0006\u00101\u001a\u00020\u00172\u0006\u00102\u001a\u00020\u001cH\u0016J\u0018\u00103\u001a\u00020\u00102\u0006\u00100\u001a\u00020\u00172\u0006\u00101\u001a\u00020\u0017H\u0016J\b\u00104\u001a\u00020\u0010H\u0016J\b\u00105\u001a\u00020\u001cH\u0016J\u0018\u00106\u001a\u0002072\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u00108\u001a\u000207H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006:"}, d2 = {"Lcom/swmansion/pulsar/reactnative/PulsarModule;", "Lcom/swmansion/pulsar/reactnative/NativeRNPulsarSpec;", "reactContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "pulsar", "Lcom/swmansion/pulsar/reactnative/PulsarReactNative;", "realtimeComposer", "Lcom/swmansion/pulsar/composers/RealtimeComposer;", "nextId", "", "patternComposersRegistry", "", "Lcom/swmansion/pulsar/composers/PatternComposer;", "Pulsar_play", "", "name", "", "Pulsar_preloadPresets", "presetNames", "Lcom/facebook/react/bridge/ReadableArray;", "Pulsar_hapticSupport", "", "Pulsar_forceHapticsSupportLevel", "level", "Pulsar_enableHaptics", "state", "", "Pulsar_enableSound", "Pulsar_enableCache", "Pulsar_clearCache", "Pulsar_stopHaptics", "Pulsar_shutDownEngine", "Pulsar_enableImpulseCompositionMode", "Pulsar_setRealtimeComposerStrategy", "strategy", "patternDataFromJSPattern", "Lcom/swmansion/pulsar/types/PatternData;", "data", "Lcom/facebook/react/bridge/ReadableMap;", "PatternComposer_parsePattern", "PatternComposer_play", "patternId", "PatternComposer_stop", "PatternComposer_release", "RealtimeComposer_start", "RealtimeComposer_set", "amplitude", "frequency", "startIfNeeded", "RealtimeComposer_playDiscrete", "RealtimeComposer_stop", "RealtimeComposer_isActive", "enumValueOrFallback", "Lcom/swmansion/pulsar/types/RealtimeComposerStrategy;", "fallback", "Companion", "react-native-pulsar_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PulsarModule extends NativeRNPulsarSpec {
    public static final String NAME = "RNPulsar";
    private int nextId;
    private final Map<Integer, PatternComposer> patternComposersRegistry;
    private final PulsarReactNative pulsar;
    private RealtimeComposer realtimeComposer;

    /* JADX INFO: compiled from: PulsarModule.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CompatibilityMode.values().length];
            try {
                iArr[CompatibilityMode.NO_SUPPORT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CompatibilityMode.LIMITED_SUPPORT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CompatibilityMode.STANDARD_SUPPORT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // com.swmansion.pulsar.reactnative.NativeRNPulsarSpec
    public void Pulsar_shutDownEngine() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PulsarModule(ReactApplicationContext reactContext) {
        super(reactContext);
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        PulsarReactNative pulsarReactNative = new PulsarReactNative(reactContext);
        this.pulsar = pulsarReactNative;
        this.realtimeComposer = Pulsar.getRealtimeComposer$default(pulsarReactNative, null, 1, null);
        this.nextId = 1;
        this.patternComposersRegistry = new LinkedHashMap();
    }

    @Override // com.swmansion.pulsar.reactnative.NativeRNPulsarSpec
    public void Pulsar_play(String name) {
        Preset byName;
        if (name == null || (byName = this.pulsar.getPresets().getByName(name)) == null) {
            return;
        }
        byName.play();
    }

    @Override // com.swmansion.pulsar.reactnative.NativeRNPulsarSpec
    public void Pulsar_preloadPresets(ReadableArray presetNames) {
        if (presetNames != null) {
            ArrayList arrayList = new ArrayList();
            int size = presetNames.size();
            for (int i = 0; i < size; i++) {
                String string = presetNames.getString(i);
                if (string != null) {
                    arrayList.add(string);
                }
            }
            this.pulsar.preloadPresets(arrayList);
        }
    }

    @Override // com.swmansion.pulsar.reactnative.NativeRNPulsarSpec
    public double Pulsar_hapticSupport() {
        int i = WhenMappings.$EnumSwitchMapping$0[this.pulsar.hapticSupport().ordinal()];
        if (i == 1) {
            return 0.0d;
        }
        if (i != 2) {
            return i != 3 ? 3.0d : 2.0d;
        }
        return 1.0d;
    }

    @Override // com.swmansion.pulsar.reactnative.NativeRNPulsarSpec
    public void Pulsar_forceHapticsSupportLevel(double level) {
        CompatibilityMode compatibilityMode;
        int i = (int) level;
        if (i == 0) {
            compatibilityMode = CompatibilityMode.NO_SUPPORT;
        } else if (i == 1) {
            compatibilityMode = CompatibilityMode.LIMITED_SUPPORT;
        } else if (i == 2) {
            compatibilityMode = CompatibilityMode.STANDARD_SUPPORT;
        } else if (i == 3) {
            compatibilityMode = CompatibilityMode.ADVANCED_SUPPORT;
        } else {
            compatibilityMode = CompatibilityMode.NO_SUPPORT;
        }
        this.pulsar.forceHapticsSupportLevel(compatibilityMode);
    }

    @Override // com.swmansion.pulsar.reactnative.NativeRNPulsarSpec
    public void Pulsar_enableHaptics(boolean state) {
        this.pulsar.enableHaptics(state);
    }

    @Override // com.swmansion.pulsar.reactnative.NativeRNPulsarSpec
    public void Pulsar_enableSound(boolean state) {
        this.pulsar.enableSound(state);
    }

    @Override // com.swmansion.pulsar.reactnative.NativeRNPulsarSpec
    public void Pulsar_enableCache(boolean state) {
        this.pulsar.enableCache(state);
    }

    @Override // com.swmansion.pulsar.reactnative.NativeRNPulsarSpec
    public void Pulsar_clearCache() {
        this.pulsar.clearCache();
    }

    @Override // com.swmansion.pulsar.reactnative.NativeRNPulsarSpec
    public void Pulsar_stopHaptics() {
        this.pulsar.stopHaptics();
    }

    @Override // com.swmansion.pulsar.reactnative.NativeRNPulsarSpec
    public void Pulsar_enableImpulseCompositionMode(boolean state) {
        this.pulsar.enableImpulseCompositionMode(state);
    }

    @Override // com.swmansion.pulsar.reactnative.NativeRNPulsarSpec
    public void Pulsar_setRealtimeComposerStrategy(double strategy) {
        RealtimeComposerStrategy realtimeComposerStrategyEnumValueOrFallback;
        int i = (int) strategy;
        if (i == 0) {
            realtimeComposerStrategyEnumValueOrFallback = RealtimeComposerStrategy.ENVELOPE;
        } else if (i == 1) {
            realtimeComposerStrategyEnumValueOrFallback = RealtimeComposerStrategy.PRIMITIVE_TICK;
        } else if (i == 2) {
            realtimeComposerStrategyEnumValueOrFallback = RealtimeComposerStrategy.PRIMITIVE_COMPLEX;
        } else if (i != 3) {
            return;
        } else {
            realtimeComposerStrategyEnumValueOrFallback = enumValueOrFallback("ENVELOPE_WITH_DISCRETE_PRIMITIVES", RealtimeComposerStrategy.ENVELOPE);
        }
        this.realtimeComposer = this.pulsar.getRealtimeComposer(realtimeComposerStrategyEnumValueOrFallback);
    }

    private final PatternData patternDataFromJSPattern(ReadableMap data) {
        ReadableArray array;
        ArrayList arrayList;
        ReadableArray array2;
        ReadableMap map = data.getMap("continuousPattern");
        ReadableArray array3 = data.getArray("discretePattern");
        ArrayList arrayList2 = new ArrayList();
        if (map != null && (array2 = map.getArray("amplitude")) != null) {
            int size = array2.size();
            for (int i = 0; i < size; i++) {
                ReadableMap map2 = array2.getMap(i);
                if (map2 != null) {
                    arrayList2.add(new ValuePoint((long) map2.getDouble("time"), (float) map2.getDouble(RNConstants.ARG_VALUE)));
                }
            }
        }
        ArrayList arrayList3 = new ArrayList();
        if (map != null && (array = map.getArray("frequency")) != null) {
            int size2 = array.size();
            int i2 = 0;
            while (i2 < size2) {
                ReadableMap map3 = array.getMap(i2);
                if (map3 != null) {
                    arrayList = arrayList3;
                    arrayList.add(new ValuePoint((long) map3.getDouble("time"), (float) map3.getDouble(RNConstants.ARG_VALUE)));
                } else {
                    arrayList = arrayList3;
                }
                i2++;
                arrayList3 = arrayList;
            }
        }
        ContinuousPattern continuousPattern = new ContinuousPattern(arrayList2, arrayList3);
        ArrayList arrayList4 = new ArrayList();
        if (array3 != null) {
            int size3 = array3.size();
            for (int i3 = 0; i3 < size3; i3++) {
                ReadableMap map4 = array3.getMap(i3);
                if (map4 != null) {
                    arrayList4.add(new ConfigPoint((long) map4.getDouble("time"), (float) map4.getDouble("amplitude"), (float) map4.getDouble("frequency")));
                }
            }
        }
        return new PatternData(continuousPattern, arrayList4);
    }

    @Override // com.swmansion.pulsar.reactnative.NativeRNPulsarSpec
    public double PatternComposer_parsePattern(ReadableMap data) {
        PatternComposer patternComposer = this.pulsar.getPatternComposer();
        if (data != null) {
            patternComposer.parsePattern(patternDataFromJSPattern(data));
        }
        int i = this.nextId;
        this.nextId = i + 1;
        this.patternComposersRegistry.put(Integer.valueOf(i), patternComposer);
        return i;
    }

    @Override // com.swmansion.pulsar.reactnative.NativeRNPulsarSpec
    public void PatternComposer_play(double patternId) {
        PatternComposer patternComposer = this.patternComposersRegistry.get(Integer.valueOf((int) patternId));
        if (patternComposer != null) {
            patternComposer.play();
        }
    }

    @Override // com.swmansion.pulsar.reactnative.NativeRNPulsarSpec
    public void PatternComposer_stop(double patternId) {
        PatternComposer patternComposer = this.patternComposersRegistry.get(Integer.valueOf((int) patternId));
        if (patternComposer != null) {
            patternComposer.stop();
        }
    }

    @Override // com.swmansion.pulsar.reactnative.NativeRNPulsarSpec
    public void PatternComposer_release(double patternId) {
        this.patternComposersRegistry.remove(Integer.valueOf((int) patternId));
    }

    @Override // com.swmansion.pulsar.reactnative.NativeRNPulsarSpec
    public void RealtimeComposer_start() {
        this.realtimeComposer.start();
    }

    @Override // com.swmansion.pulsar.reactnative.NativeRNPulsarSpec
    public void RealtimeComposer_set(double amplitude, double frequency, boolean startIfNeeded) {
        this.realtimeComposer.set((float) amplitude, (float) frequency, startIfNeeded);
    }

    @Override // com.swmansion.pulsar.reactnative.NativeRNPulsarSpec
    public void RealtimeComposer_playDiscrete(double amplitude, double frequency) {
        this.realtimeComposer.playDiscrete((float) amplitude, (float) frequency);
    }

    @Override // com.swmansion.pulsar.reactnative.NativeRNPulsarSpec
    public void RealtimeComposer_stop() {
        this.realtimeComposer.stop();
    }

    @Override // com.swmansion.pulsar.reactnative.NativeRNPulsarSpec
    public boolean RealtimeComposer_isActive() {
        return this.realtimeComposer.isActive();
    }

    private final RealtimeComposerStrategy enumValueOrFallback(String name, RealtimeComposerStrategy fallback) {
        Object objM11241constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            PulsarModule pulsarModule = this;
            objM11241constructorimpl = Result.m11241constructorimpl((RealtimeComposerStrategy) Enum.valueOf(RealtimeComposerStrategy.class, name));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM11241constructorimpl = Result.m11241constructorimpl(ResultKt.createFailure(th));
        }
        Object obj = fallback;
        if (!Result.m11247isFailureimpl(objM11241constructorimpl)) {
            obj = objM11241constructorimpl;
        }
        return (RealtimeComposerStrategy) obj;
    }
}
