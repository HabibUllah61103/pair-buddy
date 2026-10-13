package com.swmansion.pulsar.composers;

import com.reactcommunity.rndatetimepicker.RNConstants;
import com.swmansion.pulsar.haptics.HapticEngineWrapper;
import com.swmansion.pulsar.types.CompatibilityMode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RealtimePrimitiveComplexComposer.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0015¨\u0006\f"}, d2 = {"Lcom/swmansion/pulsar/composers/RealtimePrimitiveComplexComposer;", "Lcom/swmansion/pulsar/composers/RealtimePrimitiveComposer;", "engine", "Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;", "compatibilityMode", "Lcom/swmansion/pulsar/types/CompatibilityMode;", "<init>", "(Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;Lcom/swmansion/pulsar/types/CompatibilityMode;)V", "selectPrimitive", "", RNConstants.ARG_VALUE, "", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class RealtimePrimitiveComplexComposer extends RealtimePrimitiveComposer {
    @Override // com.swmansion.pulsar.composers.RealtimePrimitiveComposer
    protected int selectPrimitive(float value) {
        if (value > 0.66f) {
            return 1;
        }
        return value > 0.33f ? 7 : 8;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealtimePrimitiveComplexComposer(HapticEngineWrapper engine, CompatibilityMode compatibilityMode) {
        super(engine, compatibilityMode);
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(compatibilityMode, "compatibilityMode");
    }
}
