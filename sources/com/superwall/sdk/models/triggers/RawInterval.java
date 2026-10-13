package com.superwall.sdk.models.triggers;

import java.lang.annotation.Annotation;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.EnumsKt;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: TriggerRuleOccurrence.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 '2\u00020\u0001:\u0003%&'B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\u000bJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J$\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J%\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00002\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0001¢\u0006\u0002\b$R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0010\u0010\u0011¨\u0006("}, d2 = {"Lcom/superwall/sdk/models/triggers/RawInterval;", "", "type", "Lcom/superwall/sdk/models/triggers/RawInterval$IntervalType;", "minutes", "", "<init>", "(Lcom/superwall/sdk/models/triggers/RawInterval$IntervalType;Ljava/lang/Integer;)V", "seen0", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/superwall/sdk/models/triggers/RawInterval$IntervalType;Ljava/lang/Integer;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getType$annotations", "()V", "getType", "()Lcom/superwall/sdk/models/triggers/RawInterval$IntervalType;", "getMinutes", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "copy", "(Lcom/superwall/sdk/models/triggers/RawInterval$IntervalType;Ljava/lang/Integer;)Lcom/superwall/sdk/models/triggers/RawInterval;", "equals", "", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "IntervalType", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class RawInterval {
    private final Integer minutes;
    private final IntervalType type;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {IntervalType.INSTANCE.serializer(), null};

    public static /* synthetic */ RawInterval copy$default(RawInterval rawInterval, IntervalType intervalType, Integer num, int i, Object obj) {
        if ((i & 1) != 0) {
            intervalType = rawInterval.type;
        }
        if ((i & 2) != 0) {
            num = rawInterval.minutes;
        }
        return rawInterval.copy(intervalType, num);
    }

    @SerialName("type")
    public static /* synthetic */ void getType$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final IntervalType getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getMinutes() {
        return this.minutes;
    }

    public final RawInterval copy(IntervalType type, Integer minutes) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new RawInterval(type, minutes);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RawInterval)) {
            return false;
        }
        RawInterval rawInterval = (RawInterval) other;
        return this.type == rawInterval.type && Intrinsics.areEqual(this.minutes, rawInterval.minutes);
    }

    public int hashCode() {
        int iHashCode = this.type.hashCode() * 31;
        Integer num = this.minutes;
        return iHashCode + (num == null ? 0 : num.hashCode());
    }

    public String toString() {
        return "RawInterval(type=" + this.type + ", minutes=" + this.minutes + ")";
    }

    /* JADX INFO: compiled from: TriggerRuleOccurrence.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/triggers/RawInterval$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/triggers/RawInterval;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<RawInterval> serializer() {
            return RawInterval$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ RawInterval(int i, IntervalType intervalType, Integer num, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, RawInterval$$serializer.INSTANCE.getDescriptor());
        }
        this.type = intervalType;
        if ((i & 2) == 0) {
            this.minutes = null;
        } else {
            this.minutes = num;
        }
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(RawInterval self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeSerializableElement(serialDesc, 0, $childSerializers[0], self.type);
        if (!output.shouldEncodeElementDefault(serialDesc, 1) && self.minutes == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 1, IntSerializer.INSTANCE, self.minutes);
    }

    public RawInterval(IntervalType type, Integer num) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.minutes = num;
    }

    public /* synthetic */ RawInterval(IntervalType intervalType, Integer num, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(intervalType, (i & 2) != 0 ? null : num);
    }

    public final IntervalType getType() {
        return this.type;
    }

    /* JADX INFO: compiled from: TriggerRuleOccurrence.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0087\u0081\u0002\u0018\u0000 \u00062\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0006B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/triggers/RawInterval$IntervalType;", "", "<init>", "(Ljava/lang/String;I)V", "MINUTES", "INFINITY", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    public enum IntervalType {
        MINUTES,
        INFINITY;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.models.triggers.RawInterval$IntervalType$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RawInterval.IntervalType._init_$_anonymous_();
            }
        });

        public static EnumEntries<IntervalType> getEntries() {
            return $ENTRIES;
        }

        /* JADX INFO: compiled from: TriggerRuleOccurrence.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/triggers/RawInterval$IntervalType$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/triggers/RawInterval$IntervalType;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private final /* synthetic */ KSerializer get$cachedSerializer() {
                return (KSerializer) IntervalType.$cachedSerializer$delegate.getValue();
            }

            public final KSerializer<IntervalType> serializer() {
                return get$cachedSerializer();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ KSerializer _init_$_anonymous_() {
            return EnumsKt.createAnnotatedEnumSerializer("com.superwall.sdk.models.triggers.RawInterval.IntervalType", values(), new String[]{"MINUTES", "INFINITY"}, new Annotation[][]{null, null}, null);
        }
    }

    public final Integer getMinutes() {
        return this.minutes;
    }
}
