package com.superwall.sdk.models.paywall;

import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: PaywallPresentationInfo.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 &2\u00020\u0001:\u0002%&B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007B-\b\u0010\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0006\u0010\fJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\tHÖ\u0001J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J%\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00002\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0001¢\u0006\u0002\b$R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0011\u0010\u000e\u001a\u0004\b\u0012\u0010\u0013¨\u0006'"}, d2 = {"Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;", "", "style", "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;", "delay", "", "<init>", "(Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;J)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/superwall/sdk/models/paywall/PaywallPresentationStyle;JLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getStyle$annotations", "()V", "getStyle", "()Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;", "getDelay$annotations", "getDelay", "()J", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class PaywallPresentationInfo {
    private final long delay;
    private final PaywallPresentationStyle style;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {PaywallPresentationStyle.INSTANCE.serializer(), null};

    public static /* synthetic */ PaywallPresentationInfo copy$default(PaywallPresentationInfo paywallPresentationInfo, PaywallPresentationStyle paywallPresentationStyle, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            paywallPresentationStyle = paywallPresentationInfo.style;
        }
        if ((i & 2) != 0) {
            j = paywallPresentationInfo.delay;
        }
        return paywallPresentationInfo.copy(paywallPresentationStyle, j);
    }

    @SerialName("delay")
    public static /* synthetic */ void getDelay$annotations() {
    }

    @SerialName("style")
    public static /* synthetic */ void getStyle$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final PaywallPresentationStyle getStyle() {
        return this.style;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getDelay() {
        return this.delay;
    }

    public final PaywallPresentationInfo copy(PaywallPresentationStyle style, long delay) {
        Intrinsics.checkNotNullParameter(style, "style");
        return new PaywallPresentationInfo(style, delay);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PaywallPresentationInfo)) {
            return false;
        }
        PaywallPresentationInfo paywallPresentationInfo = (PaywallPresentationInfo) other;
        return Intrinsics.areEqual(this.style, paywallPresentationInfo.style) && this.delay == paywallPresentationInfo.delay;
    }

    public int hashCode() {
        return (this.style.hashCode() * 31) + Long.hashCode(this.delay);
    }

    public String toString() {
        return "PaywallPresentationInfo(style=" + this.style + ", delay=" + this.delay + ")";
    }

    /* JADX INFO: compiled from: PaywallPresentationInfo.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<PaywallPresentationInfo> serializer() {
            return PaywallPresentationInfo$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ PaywallPresentationInfo(int i, PaywallPresentationStyle paywallPresentationStyle, long j, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, PaywallPresentationInfo$$serializer.INSTANCE.getDescriptor());
        }
        this.style = paywallPresentationStyle;
        this.delay = j;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(PaywallPresentationInfo self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeSerializableElement(serialDesc, 0, $childSerializers[0], self.style);
        output.encodeLongElement(serialDesc, 1, self.delay);
    }

    public PaywallPresentationInfo(PaywallPresentationStyle style, long j) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.style = style;
        this.delay = j;
    }

    public final PaywallPresentationStyle getStyle() {
        return this.style;
    }

    public final long getDelay() {
        return this.delay;
    }
}
