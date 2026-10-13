package com.superwall.sdk.models.triggers;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.Transient;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: TriggerRuleOccurrence.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 12\u00020\u0001:\u0003012B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tB7\b\u0010\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\rJ\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0005HÆ\u0003J\t\u0010!\u001a\u00020\u0007HÆ\u0003J'\u0010\"\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010&\u001a\u00020\u0005HÖ\u0001J\t\u0010'\u001a\u00020\u0003HÖ\u0001J%\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00002\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.H\u0001¢\u0006\u0002\b/R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R$\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0012\u0010\u000f\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0017\u0010\u000f\u001a\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001a\u001a\u00020\u001b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001c\u0010\u000f\u001a\u0004\b\u001d\u0010\u001e¨\u00063"}, d2 = {"Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;", "", "key", "", "maxCount", "", "rawInterval", "Lcom/superwall/sdk/models/triggers/RawInterval;", "<init>", "(Ljava/lang/String;ILcom/superwall/sdk/models/triggers/RawInterval;)V", "seen0", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;ILcom/superwall/sdk/models/triggers/RawInterval;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getKey$annotations", "()V", "getKey", "()Ljava/lang/String;", "getMaxCount$annotations", "getMaxCount", "()I", "setMaxCount", "(I)V", "getRawInterval$annotations", "getRawInterval", "()Lcom/superwall/sdk/models/triggers/RawInterval;", "interval", "Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval;", "getInterval$annotations", "getInterval", "()Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "Interval", "Companion", "$serializer", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class TriggerRuleOccurrence {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final Interval interval;
    private final String key;
    private int maxCount;
    private final RawInterval rawInterval;

    /* JADX INFO: compiled from: TriggerRuleOccurrence.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[RawInterval.IntervalType.values().length];
            try {
                iArr[RawInterval.IntervalType.MINUTES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RawInterval.IntervalType.INFINITY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static /* synthetic */ TriggerRuleOccurrence copy$default(TriggerRuleOccurrence triggerRuleOccurrence, String str, int i, RawInterval rawInterval, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = triggerRuleOccurrence.key;
        }
        if ((i2 & 2) != 0) {
            i = triggerRuleOccurrence.maxCount;
        }
        if ((i2 & 4) != 0) {
            rawInterval = triggerRuleOccurrence.rawInterval;
        }
        return triggerRuleOccurrence.copy(str, i, rawInterval);
    }

    @Transient
    public static /* synthetic */ void getInterval$annotations() {
    }

    @SerialName("key")
    public static /* synthetic */ void getKey$annotations() {
    }

    @SerialName("max_count")
    public static /* synthetic */ void getMaxCount$annotations() {
    }

    @SerialName("interval")
    public static /* synthetic */ void getRawInterval$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getKey() {
        return this.key;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getMaxCount() {
        return this.maxCount;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final RawInterval getRawInterval() {
        return this.rawInterval;
    }

    public final TriggerRuleOccurrence copy(String key, int maxCount, RawInterval rawInterval) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(rawInterval, "rawInterval");
        return new TriggerRuleOccurrence(key, maxCount, rawInterval);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TriggerRuleOccurrence)) {
            return false;
        }
        TriggerRuleOccurrence triggerRuleOccurrence = (TriggerRuleOccurrence) other;
        return Intrinsics.areEqual(this.key, triggerRuleOccurrence.key) && this.maxCount == triggerRuleOccurrence.maxCount && Intrinsics.areEqual(this.rawInterval, triggerRuleOccurrence.rawInterval);
    }

    public int hashCode() {
        return (((this.key.hashCode() * 31) + Integer.hashCode(this.maxCount)) * 31) + this.rawInterval.hashCode();
    }

    public String toString() {
        return "TriggerRuleOccurrence(key=" + this.key + ", maxCount=" + this.maxCount + ", rawInterval=" + this.rawInterval + ")";
    }

    public /* synthetic */ TriggerRuleOccurrence(int i, String str, int i2, RawInterval rawInterval, SerializationConstructorMarker serializationConstructorMarker) {
        Interval.Minutes minutes;
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, TriggerRuleOccurrence$$serializer.INSTANCE.getDescriptor());
        }
        this.key = str;
        this.maxCount = i2;
        this.rawInterval = rawInterval;
        int i3 = WhenMappings.$EnumSwitchMapping$0[rawInterval.getType().ordinal()];
        if (i3 == 1) {
            Integer minutes2 = rawInterval.getMinutes();
            minutes = new Interval.Minutes(minutes2 != null ? minutes2.intValue() : 0);
        } else {
            if (i3 != 2) {
                throw new NoWhenBranchMatchedException();
            }
            minutes = Interval.Infinity.INSTANCE;
        }
        this.interval = minutes;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(TriggerRuleOccurrence self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeStringElement(serialDesc, 0, self.key);
        output.encodeIntElement(serialDesc, 1, self.maxCount);
        output.encodeSerializableElement(serialDesc, 2, RawInterval$$serializer.INSTANCE, self.rawInterval);
    }

    public TriggerRuleOccurrence(String key, int i, RawInterval rawInterval) {
        Interval.Minutes minutes;
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(rawInterval, "rawInterval");
        this.key = key;
        this.maxCount = i;
        this.rawInterval = rawInterval;
        int i2 = WhenMappings.$EnumSwitchMapping$0[rawInterval.getType().ordinal()];
        if (i2 == 1) {
            Integer minutes2 = rawInterval.getMinutes();
            minutes = new Interval.Minutes(minutes2 != null ? minutes2.intValue() : 0);
        } else {
            if (i2 != 2) {
                throw new NoWhenBranchMatchedException();
            }
            minutes = Interval.Infinity.INSTANCE;
        }
        this.interval = minutes;
    }

    public final String getKey() {
        return this.key;
    }

    public final int getMaxCount() {
        return this.maxCount;
    }

    public final void setMaxCount(int i) {
        this.maxCount = i;
    }

    public final RawInterval getRawInterval() {
        return this.rawInterval;
    }

    public final Interval getInterval() {
        return this.interval;
    }

    /* JADX INFO: compiled from: TriggerRuleOccurrence.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval;", "", "<init>", "()V", "Infinity", "Minutes", "Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval$Infinity;", "Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval$Minutes;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static abstract class Interval {
        public /* synthetic */ Interval(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: TriggerRuleOccurrence.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval$Infinity;", "Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval;", "<init>", "()V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Infinity extends Interval {
            public static final Infinity INSTANCE = new Infinity();

            private Infinity() {
                super(null);
            }
        }

        private Interval() {
        }

        /* JADX INFO: compiled from: TriggerRuleOccurrence.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval$Minutes;", "Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Interval;", "minutes", "", "<init>", "(I)V", "getMinutes", "()I", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class Minutes extends Interval {
            private final int minutes;

            public static /* synthetic */ Minutes copy$default(Minutes minutes, int i, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    i = minutes.minutes;
                }
                return minutes.copy(i);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final int getMinutes() {
                return this.minutes;
            }

            public final Minutes copy(int minutes) {
                return new Minutes(minutes);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Minutes) && this.minutes == ((Minutes) other).minutes;
            }

            public int hashCode() {
                return Integer.hashCode(this.minutes);
            }

            public String toString() {
                return "Minutes(minutes=" + this.minutes + ")";
            }

            public final int getMinutes() {
                return this.minutes;
            }

            public Minutes(int i) {
                super(null);
                this.minutes = i;
            }
        }
    }

    /* JADX INFO: compiled from: TriggerRuleOccurrence.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence$Companion;", "", "<init>", "()V", "stub", "Lcom/superwall/sdk/models/triggers/TriggerRuleOccurrence;", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<TriggerRuleOccurrence> serializer() {
            return TriggerRuleOccurrence$$serializer.INSTANCE;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final TriggerRuleOccurrence stub() {
            return new TriggerRuleOccurrence("abc", 10, new RawInterval(RawInterval.IntervalType.INFINITY, (Integer) null, 2, (DefaultConstructorMarker) (0 == true ? 1 : 0)));
        }
    }
}
