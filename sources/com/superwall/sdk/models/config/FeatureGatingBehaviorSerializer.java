package com.superwall.sdk.models.config;

import com.reactcommunity.rndatetimepicker.RNConstants;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;

/* JADX INFO: compiled from: FeatureGatingBehaviour.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\fH\u0016R\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/models/config/FeatureGatingBehaviorSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/config/FeatureGatingBehavior;", "<init>", "()V", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", RNConstants.ARG_VALUE, "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class FeatureGatingBehaviorSerializer implements KSerializer<FeatureGatingBehavior> {
    public static final FeatureGatingBehaviorSerializer INSTANCE = new FeatureGatingBehaviorSerializer();
    private static final SerialDescriptor descriptor = new PluginGeneratedSerialDescriptor("com.superwall.sdk.models.config.FeatureGatingBehavior", null, 0);

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    private FeatureGatingBehaviorSerializer() {
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, FeatureGatingBehavior value) {
        String str;
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        if (value instanceof FeatureGatingBehavior.Gated) {
            str = "GATED";
        } else {
            if (!(value instanceof FeatureGatingBehavior.NonGated)) {
                throw new NoWhenBranchMatchedException();
            }
            str = "NON_GATED";
        }
        encoder.encodeString(str);
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public FeatureGatingBehavior deserialize(Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        String strDecodeString = decoder.decodeString();
        if (Intrinsics.areEqual(strDecodeString, "GATED")) {
            return FeatureGatingBehavior.Gated.INSTANCE;
        }
        return Intrinsics.areEqual(strDecodeString, "NON_GATED") ? FeatureGatingBehavior.NonGated.INSTANCE : FeatureGatingBehavior.NonGated.INSTANCE;
    }
}
