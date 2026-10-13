package com.superwall.sdk.store.testmode.models;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: SuperwallProduct.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 +2\u00020\u0001:\u0002*+B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bB7\b\u0010\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\fJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0015J.\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÖ\u0001J\t\u0010 \u001a\u00020!HÖ\u0001J%\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u00002\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(H\u0001¢\u0006\u0002\b)R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R \u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\u0016\u0012\u0004\b\u0013\u0010\u0010\u001a\u0004\b\u0014\u0010\u0015¨\u0006,"}, d2 = {"Lcom/superwall/sdk/store/testmode/models/SuperwallProductSubscription;", "", TypedValues.Cycle.S_WAVE_PERIOD, "Lcom/superwall/sdk/store/testmode/models/SuperwallSubscriptionPeriod;", "periodCount", "", "trialPeriodDays", "<init>", "(Lcom/superwall/sdk/store/testmode/models/SuperwallSubscriptionPeriod;ILjava/lang/Integer;)V", "seen0", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/superwall/sdk/store/testmode/models/SuperwallSubscriptionPeriod;ILjava/lang/Integer;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getPeriod", "()Lcom/superwall/sdk/store/testmode/models/SuperwallSubscriptionPeriod;", "getPeriodCount$annotations", "()V", "getPeriodCount", "()I", "getTrialPeriodDays$annotations", "getTrialPeriodDays", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "component3", "copy", "(Lcom/superwall/sdk/store/testmode/models/SuperwallSubscriptionPeriod;ILjava/lang/Integer;)Lcom/superwall/sdk/store/testmode/models/SuperwallProductSubscription;", "equals", "", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class SuperwallProductSubscription {
    private final SuperwallSubscriptionPeriod period;
    private final int periodCount;
    private final Integer trialPeriodDays;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {SuperwallSubscriptionPeriod.INSTANCE.serializer(), null, null};

    public static /* synthetic */ SuperwallProductSubscription copy$default(SuperwallProductSubscription superwallProductSubscription, SuperwallSubscriptionPeriod superwallSubscriptionPeriod, int i, Integer num, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            superwallSubscriptionPeriod = superwallProductSubscription.period;
        }
        if ((i2 & 2) != 0) {
            i = superwallProductSubscription.periodCount;
        }
        if ((i2 & 4) != 0) {
            num = superwallProductSubscription.trialPeriodDays;
        }
        return superwallProductSubscription.copy(superwallSubscriptionPeriod, i, num);
    }

    @SerialName("period_count")
    public static /* synthetic */ void getPeriodCount$annotations() {
    }

    @SerialName("trial_period_days")
    public static /* synthetic */ void getTrialPeriodDays$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final SuperwallSubscriptionPeriod getPeriod() {
        return this.period;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getPeriodCount() {
        return this.periodCount;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getTrialPeriodDays() {
        return this.trialPeriodDays;
    }

    public final SuperwallProductSubscription copy(SuperwallSubscriptionPeriod period, int periodCount, Integer trialPeriodDays) {
        Intrinsics.checkNotNullParameter(period, "period");
        return new SuperwallProductSubscription(period, periodCount, trialPeriodDays);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SuperwallProductSubscription)) {
            return false;
        }
        SuperwallProductSubscription superwallProductSubscription = (SuperwallProductSubscription) other;
        return this.period == superwallProductSubscription.period && this.periodCount == superwallProductSubscription.periodCount && Intrinsics.areEqual(this.trialPeriodDays, superwallProductSubscription.trialPeriodDays);
    }

    public int hashCode() {
        int iHashCode = ((this.period.hashCode() * 31) + Integer.hashCode(this.periodCount)) * 31;
        Integer num = this.trialPeriodDays;
        return iHashCode + (num == null ? 0 : num.hashCode());
    }

    public String toString() {
        return "SuperwallProductSubscription(period=" + this.period + ", periodCount=" + this.periodCount + ", trialPeriodDays=" + this.trialPeriodDays + ")";
    }

    /* JADX INFO: compiled from: SuperwallProduct.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/store/testmode/models/SuperwallProductSubscription$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/store/testmode/models/SuperwallProductSubscription;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<SuperwallProductSubscription> serializer() {
            return SuperwallProductSubscription$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ SuperwallProductSubscription(int i, SuperwallSubscriptionPeriod superwallSubscriptionPeriod, int i2, Integer num, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, SuperwallProductSubscription$$serializer.INSTANCE.getDescriptor());
        }
        this.period = superwallSubscriptionPeriod;
        if ((i & 2) == 0) {
            this.periodCount = 1;
        } else {
            this.periodCount = i2;
        }
        if ((i & 4) == 0) {
            this.trialPeriodDays = null;
        } else {
            this.trialPeriodDays = num;
        }
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(SuperwallProductSubscription self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeSerializableElement(serialDesc, 0, $childSerializers[0], self.period);
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.periodCount != 1) {
            output.encodeIntElement(serialDesc, 1, self.periodCount);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 2) && self.trialPeriodDays == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 2, IntSerializer.INSTANCE, self.trialPeriodDays);
    }

    public SuperwallProductSubscription(SuperwallSubscriptionPeriod period, int i, Integer num) {
        Intrinsics.checkNotNullParameter(period, "period");
        this.period = period;
        this.periodCount = i;
        this.trialPeriodDays = num;
    }

    public /* synthetic */ SuperwallProductSubscription(SuperwallSubscriptionPeriod superwallSubscriptionPeriod, int i, Integer num, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(superwallSubscriptionPeriod, (i2 & 2) != 0 ? 1 : i, (i2 & 4) != 0 ? null : num);
    }

    public final SuperwallSubscriptionPeriod getPeriod() {
        return this.period;
    }

    public final int getPeriodCount() {
        return this.periodCount;
    }

    public final Integer getTrialPeriodDays() {
        return this.trialPeriodDays;
    }
}
