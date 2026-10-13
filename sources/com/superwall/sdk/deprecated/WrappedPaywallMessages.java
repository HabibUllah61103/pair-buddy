package com.superwall.sdk.deprecated;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaywallMessages.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0017"}, d2 = {"Lcom/superwall/sdk/deprecated/WrappedPaywallMessages;", "", "version", "", "payload", "Lcom/superwall/sdk/deprecated/PayloadMessages;", "<init>", "(ILcom/superwall/sdk/deprecated/PayloadMessages;)V", "getVersion", "()I", "setVersion", "(I)V", "getPayload", "()Lcom/superwall/sdk/deprecated/PayloadMessages;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class WrappedPaywallMessages {
    private final PayloadMessages payload;
    private int version;

    public static /* synthetic */ WrappedPaywallMessages copy$default(WrappedPaywallMessages wrappedPaywallMessages, int i, PayloadMessages payloadMessages, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = wrappedPaywallMessages.version;
        }
        if ((i2 & 2) != 0) {
            payloadMessages = wrappedPaywallMessages.payload;
        }
        return wrappedPaywallMessages.copy(i, payloadMessages);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getVersion() {
        return this.version;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final PayloadMessages getPayload() {
        return this.payload;
    }

    public final WrappedPaywallMessages copy(int version, PayloadMessages payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        return new WrappedPaywallMessages(version, payload);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof WrappedPaywallMessages)) {
            return false;
        }
        WrappedPaywallMessages wrappedPaywallMessages = (WrappedPaywallMessages) other;
        return this.version == wrappedPaywallMessages.version && Intrinsics.areEqual(this.payload, wrappedPaywallMessages.payload);
    }

    public int hashCode() {
        return (Integer.hashCode(this.version) * 31) + this.payload.hashCode();
    }

    public String toString() {
        return "WrappedPaywallMessages(version=" + this.version + ", payload=" + this.payload + ")";
    }

    public WrappedPaywallMessages(int i, PayloadMessages payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        this.version = i;
        this.payload = payload;
    }

    public /* synthetic */ WrappedPaywallMessages(int i, PayloadMessages payloadMessages, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 1 : i, payloadMessages);
    }

    public final int getVersion() {
        return this.version;
    }

    public final void setVersion(int i) {
        this.version = i;
    }

    public final PayloadMessages getPayload() {
        return this.payload;
    }
}
