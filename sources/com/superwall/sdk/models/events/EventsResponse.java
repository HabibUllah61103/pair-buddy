package com.superwall.sdk.models.events;

import com.superwall.sdk.models.SerializableEntity;
import java.util.List;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: EventsResponse.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 %2\u00020\u0001:\u0003#$%B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bB5\b\u0010\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\fJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\u0011\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J%\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0006HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J%\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0001¢\u0006\u0002\b\"R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006&"}, d2 = {"Lcom/superwall/sdk/models/events/EventsResponse;", "Lcom/superwall/sdk/models/SerializableEntity;", "status", "Lcom/superwall/sdk/models/events/EventsResponse$Status;", "invalidIndexes", "", "", "<init>", "(Lcom/superwall/sdk/models/events/EventsResponse$Status;Ljava/util/List;)V", "seen0", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/superwall/sdk/models/events/EventsResponse$Status;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getStatus", "()Lcom/superwall/sdk/models/events/EventsResponse$Status;", "getInvalidIndexes", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "Status", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class EventsResponse implements SerializableEntity {
    private final List<Integer> invalidIndexes;
    private final Status status;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, new ArrayListSerializer(IntSerializer.INSTANCE)};

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ EventsResponse copy$default(EventsResponse eventsResponse, Status status, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            status = eventsResponse.status;
        }
        if ((i & 2) != 0) {
            list = eventsResponse.invalidIndexes;
        }
        return eventsResponse.copy(status, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Status getStatus() {
        return this.status;
    }

    public final List<Integer> component2() {
        return this.invalidIndexes;
    }

    public final EventsResponse copy(Status status, List<Integer> invalidIndexes) {
        Intrinsics.checkNotNullParameter(status, "status");
        return new EventsResponse(status, invalidIndexes);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof EventsResponse)) {
            return false;
        }
        EventsResponse eventsResponse = (EventsResponse) other;
        return this.status == eventsResponse.status && Intrinsics.areEqual(this.invalidIndexes, eventsResponse.invalidIndexes);
    }

    public int hashCode() {
        int iHashCode = this.status.hashCode() * 31;
        List<Integer> list = this.invalidIndexes;
        return iHashCode + (list == null ? 0 : list.hashCode());
    }

    public String toString() {
        return "EventsResponse(status=" + this.status + ", invalidIndexes=" + this.invalidIndexes + ")";
    }

    /* JADX INFO: compiled from: EventsResponse.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/events/EventsResponse$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/events/EventsResponse;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<EventsResponse> serializer() {
            return EventsResponse$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ EventsResponse(int i, Status status, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, EventsResponse$$serializer.INSTANCE.getDescriptor());
        }
        this.status = status;
        if ((i & 2) == 0) {
            this.invalidIndexes = null;
        } else {
            this.invalidIndexes = list;
        }
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(EventsResponse self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeSerializableElement(serialDesc, 0, StatusSerializer.INSTANCE, self.status);
        if (!output.shouldEncodeElementDefault(serialDesc, 1) && self.invalidIndexes == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 1, kSerializerArr[1], self.invalidIndexes);
    }

    public EventsResponse(Status status, List<Integer> list) {
        Intrinsics.checkNotNullParameter(status, "status");
        this.status = status;
        this.invalidIndexes = list;
    }

    public /* synthetic */ EventsResponse(Status status, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(status, (i & 2) != 0 ? null : list);
    }

    public final Status getStatus() {
        return this.status;
    }

    /* JADX INFO: compiled from: EventsResponse.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0087\u0081\u0002\u0018\u0000 \u00062\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0006B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/events/EventsResponse$Status;", "", "<init>", "(Ljava/lang/String;I)V", "OK", "PARTIAL_SUCCESS", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable(with = StatusSerializer.class)
    public enum Status {
        OK,
        PARTIAL_SUCCESS;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        public static EnumEntries<Status> getEntries() {
            return $ENTRIES;
        }

        /* JADX INFO: compiled from: EventsResponse.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/events/EventsResponse$Status$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/events/EventsResponse$Status;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KSerializer<Status> serializer() {
                return StatusSerializer.INSTANCE;
            }
        }
    }

    public final List<Integer> getInvalidIndexes() {
        return this.invalidIndexes;
    }
}
