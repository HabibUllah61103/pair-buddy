package com.superwall.sdk.store.abstractions.transactions;

import com.reactcommunity.rndatetimepicker.RNConstants;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;

/* JADX INFO: compiled from: StoreTransactionType.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\fH\u0016R\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionStateSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;", "<init>", "()V", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", RNConstants.ARG_VALUE, "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class StoreTransactionStateSerializer implements KSerializer<StoreTransactionState> {
    public static final StoreTransactionStateSerializer INSTANCE = new StoreTransactionStateSerializer();
    private static final SerialDescriptor descriptor = new PluginGeneratedSerialDescriptor("com.superwall.sdk.store.abstractions.transactions.StoreTransactionState", null, 0);

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    private StoreTransactionStateSerializer() {
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, StoreTransactionState value) {
        String str;
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        if (value instanceof StoreTransactionState.Purchasing) {
            str = "purchasing";
        } else if (value instanceof StoreTransactionState.Purchased) {
            str = "purchased";
        } else if (value instanceof StoreTransactionState.Failed) {
            str = "failed";
        } else if (value instanceof StoreTransactionState.Restored) {
            str = "restored";
        } else {
            if (!(value instanceof StoreTransactionState.Deferred)) {
                throw new NoWhenBranchMatchedException();
            }
            str = "deferred";
        }
        encoder.encodeString(str);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // kotlinx.serialization.DeserializationStrategy
    public StoreTransactionState deserialize(Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        String strDecodeString = decoder.decodeString();
        switch (strDecodeString.hashCode()) {
            case -1791517821:
                if (strDecodeString.equals("purchased")) {
                    return StoreTransactionState.Purchased.INSTANCE;
                }
                break;
            case -1281977283:
                if (strDecodeString.equals("failed")) {
                    return StoreTransactionState.Failed.INSTANCE;
                }
                break;
            case -336625770:
                if (strDecodeString.equals("restored")) {
                    return StoreTransactionState.Restored.INSTANCE;
                }
                break;
            case 297526654:
                if (strDecodeString.equals("purchasing")) {
                    return StoreTransactionState.Purchasing.INSTANCE;
                }
                break;
            case 647890911:
                if (strDecodeString.equals("deferred")) {
                    return StoreTransactionState.Deferred.INSTANCE;
                }
                break;
        }
        throw new SerializationException("Unknown string value: " + strDecodeString);
    }
}
