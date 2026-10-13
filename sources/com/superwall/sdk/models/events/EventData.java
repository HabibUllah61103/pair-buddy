package com.superwall.sdk.models.events;

import com.superwall.sdk.models.serialization.AnySerializer;
import com.superwall.sdk.models.serialization.DateSerializer;
import java.util.Date;
import java.util.Map;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: EventData.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 12\u00020\u0001:\u000212BD\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012!\u0010\u0005\u001a\u001d\u0012\u0004\u0012\u00020\u0003\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\t0\t0\u0006\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rBO\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\f\u0010\u0012J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J$\u0010!\u001a\u001d\u0012\u0004\u0012\u00020\u0003\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\t0\t0\u0006HÆ\u0003J\t\u0010\"\u001a\u00020\u000bHÆ\u0003JL\u0010#\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032#\b\u0002\u0010\u0005\u001a\u001d\u0012\u0004\u0012\u00020\u0003\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\t0\t0\u00062\b\b\u0002\u0010\n\u001a\u00020\u000bHÆ\u0001J\u0013\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010'\u001a\u00020\u000fHÖ\u0001J\t\u0010(\u001a\u00020\u0003HÖ\u0001J%\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u00002\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/H\u0001¢\u0006\u0002\b0R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0017\u0010\u0014\u001a\u0004\b\u0018\u0010\u0016R7\u0010\u0005\u001a\u001d\u0012\u0004\u0012\u00020\u0003\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\t0\t0\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0019\u0010\u0014\u001a\u0004\b\u001a\u0010\u001bR\u001c\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001c\u0010\u0014\u001a\u0004\b\u001d\u0010\u001e¨\u00063"}, d2 = {"Lcom/superwall/sdk/models/events/EventData;", "", "id", "", "name", "parameters", "", "Lkotlinx/serialization/Serializable;", "with", "Lcom/superwall/sdk/models/serialization/AnySerializer;", "createdAt", "Ljava/util/Date;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Date;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Date;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getId$annotations", "()V", "getId", "()Ljava/lang/String;", "getName$annotations", "getName", "getParameters$annotations", "getParameters", "()Ljava/util/Map;", "getCreatedAt$annotations", "getCreatedAt", "()Ljava/util/Date;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "Companion", "$serializer", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class EventData {
    private final Date createdAt;
    private final String id;
    private final String name;
    private final Map<String, Object> parameters;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, new LinkedHashMapSerializer(StringSerializer.INSTANCE, AnySerializer.INSTANCE), null};

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ EventData copy$default(EventData eventData, String str, String str2, Map map, Date date, int i, Object obj) {
        if ((i & 1) != 0) {
            str = eventData.id;
        }
        if ((i & 2) != 0) {
            str2 = eventData.name;
        }
        if ((i & 4) != 0) {
            map = eventData.parameters;
        }
        if ((i & 8) != 0) {
            date = eventData.createdAt;
        }
        return eventData.copy(str, str2, map, date);
    }

    @SerialName("created_at")
    @Serializable(with = DateSerializer.class)
    public static /* synthetic */ void getCreatedAt$annotations() {
    }

    @SerialName("event_id")
    public static /* synthetic */ void getId$annotations() {
    }

    @SerialName("event_name")
    public static /* synthetic */ void getName$annotations() {
    }

    @SerialName("parameters")
    public static /* synthetic */ void getParameters$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    public final Map<String, Object> component3() {
        return this.parameters;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Date getCreatedAt() {
        return this.createdAt;
    }

    public final EventData copy(String id, String name, Map<String, ? extends Object> parameters, Date createdAt) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        Intrinsics.checkNotNullParameter(createdAt, "createdAt");
        return new EventData(id, name, parameters, createdAt);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof EventData)) {
            return false;
        }
        EventData eventData = (EventData) other;
        return Intrinsics.areEqual(this.id, eventData.id) && Intrinsics.areEqual(this.name, eventData.name) && Intrinsics.areEqual(this.parameters, eventData.parameters) && Intrinsics.areEqual(this.createdAt, eventData.createdAt);
    }

    public int hashCode() {
        return (((((this.id.hashCode() * 31) + this.name.hashCode()) * 31) + this.parameters.hashCode()) * 31) + this.createdAt.hashCode();
    }

    public String toString() {
        return "EventData(id=" + this.id + ", name=" + this.name + ", parameters=" + this.parameters + ", createdAt=" + this.createdAt + ")";
    }

    public /* synthetic */ EventData(int i, String str, String str2, Map map, Date date, SerializationConstructorMarker serializationConstructorMarker) {
        if (14 != (i & 14)) {
            PluginExceptionsKt.throwMissingFieldException(i, 14, EventData$$serializer.INSTANCE.getDescriptor());
        }
        if ((i & 1) == 0) {
            this.id = UUID.randomUUID().toString();
        } else {
            this.id = str;
        }
        this.name = str2;
        this.parameters = map;
        this.createdAt = date;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(EventData self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        if (output.shouldEncodeElementDefault(serialDesc, 0) || !Intrinsics.areEqual(self.id, UUID.randomUUID().toString())) {
            output.encodeStringElement(serialDesc, 0, self.id);
        }
        output.encodeStringElement(serialDesc, 1, self.name);
        output.encodeSerializableElement(serialDesc, 2, kSerializerArr[2], self.parameters);
        output.encodeSerializableElement(serialDesc, 3, DateSerializer.INSTANCE, self.createdAt);
    }

    public EventData(String id, String name, Map<String, ? extends Object> parameters, Date createdAt) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        Intrinsics.checkNotNullParameter(createdAt, "createdAt");
        this.id = id;
        this.name = name;
        this.parameters = parameters;
        this.createdAt = createdAt;
    }

    public final String getId() {
        return this.id;
    }

    public /* synthetic */ EventData(String str, String str2, Map map, Date date, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? UUID.randomUUID().toString() : str, str2, map, date);
    }

    public final String getName() {
        return this.name;
    }

    public final Map<String, Object> getParameters() {
        return this.parameters;
    }

    public final Date getCreatedAt() {
        return this.createdAt;
    }

    /* JADX INFO: compiled from: EventData.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/models/events/EventData$Companion;", "", "<init>", "()V", "stub", "Lcom/superwall/sdk/models/events/EventData;", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<EventData> serializer() {
            return EventData$$serializer.INSTANCE;
        }

        public final EventData stub() {
            return new EventData((String) null, "opened_application", MapsKt.emptyMap(), new Date(), 1, (DefaultConstructorMarker) null);
        }
    }
}
