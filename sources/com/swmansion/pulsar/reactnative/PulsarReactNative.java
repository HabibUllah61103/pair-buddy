package com.swmansion.pulsar.reactnative;

import android.content.Context;
import com.facebook.react.bridge.ReactApplicationContext;
import com.swmansion.pulsar.Pulsar;
import com.swmansion.pulsar.presets.PresetsWrapper;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PulsarReactNative.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0014¨\u0006\b"}, d2 = {"Lcom/swmansion/pulsar/reactnative/PulsarReactNative;", "Lcom/swmansion/pulsar/Pulsar;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "createPresets", "Lcom/swmansion/pulsar/presets/PresetsWrapper;", "react-native-pulsar_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PulsarReactNative extends Pulsar {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PulsarReactNative(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.swmansion.pulsar.Pulsar
    protected PresetsWrapper createPresets() {
        Context context = getContext();
        Intrinsics.checkNotNull(context, "null cannot be cast to non-null type com.facebook.react.bridge.ReactApplicationContext");
        return new PresetsWrapper(this, new ReactNativeActivityProvider((ReactApplicationContext) context), getEngine());
    }
}
