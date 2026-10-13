package com.superwall.sdk.models.config;

import com.reactcommunity.rndatetimepicker.RNConstants;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: ComputedPropertyRequest.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u0000 $2\u00020\u0001:\u0004!\"#$B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0006\u0010\fJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\tHÖ\u0001J\t\u0010\u0018\u001a\u00020\u0005HÖ\u0001J%\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0001¢\u0006\u0002\b R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006%"}, d2 = {"Lcom/superwall/sdk/models/config/ComputedPropertyRequest;", "", "type", "Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;", "eventName", "", "<init>", "(Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;Ljava/lang/String;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getType", "()Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;", "getEventName", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "ComputedPropertyRequestType", "ComputedPropertyRequestTypeSerializer", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class ComputedPropertyRequest {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String eventName;
    private final ComputedPropertyRequestType type;

    public static /* synthetic */ ComputedPropertyRequest copy$default(ComputedPropertyRequest computedPropertyRequest, ComputedPropertyRequestType computedPropertyRequestType, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            computedPropertyRequestType = computedPropertyRequest.type;
        }
        if ((i & 2) != 0) {
            str = computedPropertyRequest.eventName;
        }
        return computedPropertyRequest.copy(computedPropertyRequestType, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final ComputedPropertyRequestType getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getEventName() {
        return this.eventName;
    }

    public final ComputedPropertyRequest copy(ComputedPropertyRequestType type, String eventName) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        return new ComputedPropertyRequest(type, eventName);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ComputedPropertyRequest)) {
            return false;
        }
        ComputedPropertyRequest computedPropertyRequest = (ComputedPropertyRequest) other;
        return this.type == computedPropertyRequest.type && Intrinsics.areEqual(this.eventName, computedPropertyRequest.eventName);
    }

    public int hashCode() {
        return (this.type.hashCode() * 31) + this.eventName.hashCode();
    }

    public String toString() {
        return "ComputedPropertyRequest(type=" + this.type + ", eventName=" + this.eventName + ")";
    }

    /* JADX INFO: compiled from: ComputedPropertyRequest.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/config/ComputedPropertyRequest$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<ComputedPropertyRequest> serializer() {
            return ComputedPropertyRequest$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ ComputedPropertyRequest(int i, ComputedPropertyRequestType computedPropertyRequestType, String str, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, ComputedPropertyRequest$$serializer.INSTANCE.getDescriptor());
        }
        this.type = computedPropertyRequestType;
        this.eventName = str;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(ComputedPropertyRequest self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeSerializableElement(serialDesc, 0, ComputedPropertyRequestTypeSerializer.INSTANCE, self.type);
        output.encodeStringElement(serialDesc, 1, self.eventName);
    }

    public ComputedPropertyRequest(ComputedPropertyRequestType type, String eventName) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        this.type = type;
        this.eventName = eventName;
    }

    public final ComputedPropertyRequestType getType() {
        return this.type;
    }

    public final String getEventName() {
        return this.eventName;
    }

    /* JADX INFO: compiled from: ComputedPropertyRequest.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0003\b\u0087\u0081\u0002\u0018\u0000 \u001c2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001cB\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J!\u0010\u0018\u001a\u0004\u0018\u00010\u00152\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00150\u001a¢\u0006\u0002\u0010\u001bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0012\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0007R\u0011\u0010\u0014\u001a\u00020\u00158F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u001d"}, d2 = {"Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;", "", "rawValue", "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getRawValue", "()Ljava/lang/String;", "MINUTES_SINCE", "HOURS_SINCE", "DAYS_SINCE", "MONTHS_SINCE", "YEARS_SINCE", "PLACEMENTS_IN_DAY", "PLACEMENTS_IN_HOUR", "PLACEMENTS_IN_WEEK", "PLACEMENTS_IN_MONTH", "PLACEMENTS_SINCE_INSTALL", "prefix", "getPrefix", "calendarComponent", "", "getCalendarComponent", "()I", "dateComponent", "components", "", "(Ljava/util/Map;)Ljava/lang/Integer;", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable(with = ComputedPropertyRequestTypeSerializer.class)
    public enum ComputedPropertyRequestType {
        MINUTES_SINCE("MINUTES_SINCE"),
        HOURS_SINCE("HOURS_SINCE"),
        DAYS_SINCE("DAYS_SINCE"),
        MONTHS_SINCE("MONTHS_SINCE"),
        YEARS_SINCE("YEARS_SINCE"),
        PLACEMENTS_IN_DAY("PLACEMENTS_IN_DAY"),
        PLACEMENTS_IN_HOUR("PLACEMENTS_IN_HOUR"),
        PLACEMENTS_IN_WEEK("PLACEMENTS_IN_WEEK"),
        PLACEMENTS_IN_MONTH("PLACEMENTS_IN_MONTH"),
        PLACEMENTS_SINCE_INSTALL("PLACEMENTS_SINCE_INSTALL");

        private final String rawValue;
        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: compiled from: ComputedPropertyRequest.kt */
        @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[ComputedPropertyRequestType.values().length];
                try {
                    iArr[ComputedPropertyRequestType.MINUTES_SINCE.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[ComputedPropertyRequestType.HOURS_SINCE.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[ComputedPropertyRequestType.DAYS_SINCE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[ComputedPropertyRequestType.MONTHS_SINCE.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[ComputedPropertyRequestType.YEARS_SINCE.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[ComputedPropertyRequestType.PLACEMENTS_IN_DAY.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[ComputedPropertyRequestType.PLACEMENTS_IN_HOUR.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                try {
                    iArr[ComputedPropertyRequestType.PLACEMENTS_IN_WEEK.ordinal()] = 8;
                } catch (NoSuchFieldError unused8) {
                }
                try {
                    iArr[ComputedPropertyRequestType.PLACEMENTS_IN_MONTH.ordinal()] = 9;
                } catch (NoSuchFieldError unused9) {
                }
                try {
                    iArr[ComputedPropertyRequestType.PLACEMENTS_SINCE_INSTALL.ordinal()] = 10;
                } catch (NoSuchFieldError unused10) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public static EnumEntries<ComputedPropertyRequestType> getEntries() {
            return $ENTRIES;
        }

        /* JADX INFO: compiled from: ComputedPropertyRequest.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<ComputedPropertyRequestType> serializer() {
                return ComputedPropertyRequestTypeSerializer.INSTANCE;
            }
        }

        ComputedPropertyRequestType(String str) {
            this.rawValue = str;
        }

        public final String getRawValue() {
            return this.rawValue;
        }

        public final String getPrefix() {
            switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
                case 1:
                    return "minutesSince_";
                case 2:
                    return "hoursSince_";
                case 3:
                    return "daysSince_";
                case 4:
                    return "monthsSince_";
                case 5:
                    return "yearsSince_";
                case 6:
                    return "placementsInDay";
                case 7:
                    return "placementsInHour";
                case 8:
                    return "placementsInWeek";
                case 9:
                    return "placementsInMonth";
                case 10:
                    return "placementsSinceInstall";
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }

        public final int getCalendarComponent() {
            switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
                case 1:
                    return 12;
                case 2:
                    return 11;
                case 3:
                    return 5;
                case 4:
                    return 2;
                case 5:
                    return 1;
                case 6:
                    return 5;
                case 7:
                    return 11;
                case 8:
                    return 3;
                case 9:
                    return 2;
                case 10:
                    return 1;
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }

        public final Integer dateComponent(Map<Integer, Integer> components) {
            Intrinsics.checkNotNullParameter(components, "components");
            switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
                case 1:
                    return components.get(12);
                case 2:
                    return components.get(11);
                case 3:
                    return components.get(5);
                case 4:
                    return components.get(2);
                case 5:
                    return components.get(1);
                case 6:
                    return components.get(5);
                case 7:
                    return components.get(11);
                case 8:
                    return components.get(3);
                case 9:
                    return components.get(2);
                case 10:
                    return components.get(1);
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }
    }

    /* JADX INFO: compiled from: ComputedPropertyRequest.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\fH\u0016R\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestTypeSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/config/ComputedPropertyRequest$ComputedPropertyRequestType;", "<init>", "()V", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", RNConstants.ARG_VALUE, "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ComputedPropertyRequestTypeSerializer implements KSerializer<ComputedPropertyRequestType> {
        public static final ComputedPropertyRequestTypeSerializer INSTANCE = new ComputedPropertyRequestTypeSerializer();
        private static final SerialDescriptor descriptor;

        @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
        public final SerialDescriptor getDescriptor() {
            return descriptor;
        }

        static {
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.superwall.sdk.models.config.ComputedPropertyRequest.ComputedPropertyRequestType", null, 1);
            pluginGeneratedSerialDescriptor.addElement("rawValue", false);
            descriptor = pluginGeneratedSerialDescriptor;
        }

        private ComputedPropertyRequestTypeSerializer() {
        }

        @Override // kotlinx.serialization.SerializationStrategy
        public void serialize(Encoder encoder, ComputedPropertyRequestType value) {
            Intrinsics.checkNotNullParameter(encoder, "encoder");
            Intrinsics.checkNotNullParameter(value, "value");
            encoder.encodeString(value.getRawValue());
        }

        /* JADX WARN: Code duplicated, block: B:10:0x0024 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:11:0x0025  */
        @Override // kotlinx.serialization.DeserializationStrategy
        public ComputedPropertyRequestType deserialize(Decoder decoder) {
            Intrinsics.checkNotNullParameter(decoder, "decoder");
            String strDecodeString = decoder.decodeString();
            for (ComputedPropertyRequestType computedPropertyRequestType : ComputedPropertyRequestType.values()) {
                if (Intrinsics.areEqual(computedPropertyRequestType.getRawValue(), strDecodeString)) {
                    if (computedPropertyRequestType != null) {
                        return computedPropertyRequestType;
                    }
                    throw new IllegalArgumentException("Unsupported computed property type.");
                }
            }
            computedPropertyRequestType = null;
            if (computedPropertyRequestType != null) {
                return computedPropertyRequestType;
            }
            throw new IllegalArgumentException("Unsupported computed property type.");
        }
    }
}
