package com.superwall.sdk.models.enrichment;

import com.superwall.sdk.storage.core_data.ConvertersKt;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
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
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonObjectSerializer;

/* JADX INFO: compiled from: Enrichment.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 &2\u00020\u0001:\u0002&'B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B/\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0005\u0010\u000bJ\t\u0010\u0016\u001a\u00020\u0003HÂ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÂ\u0003J\u001d\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\bHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0011HÖ\u0001J%\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00002\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0001¢\u0006\u0002\b%R\u0016\u0010\u0002\u001a\u00020\u00038\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\f\u0010\rR\u0016\u0010\u0004\u001a\u00020\u00038\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u000e\u0010\rR\u001d\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00010\u00108F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u001d\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00010\u00108F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0013¨\u0006("}, d2 = {"Lcom/superwall/sdk/models/enrichment/Enrichment;", "", "_user", "Lkotlinx/serialization/json/JsonObject;", "_device", "<init>", "(Lkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/json/JsonObject;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "get_user$annotations", "()V", "get_device$annotations", "user", "", "", "getUser", "()Ljava/util/Map;", "device", "getDevice", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "Companion", "$serializer", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class Enrichment {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final JsonObject _device;
    private final JsonObject _user;

    /* JADX INFO: renamed from: component1, reason: from getter */
    private final JsonObject get_user() {
        return this._user;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    private final JsonObject get_device() {
        return this._device;
    }

    public static /* synthetic */ Enrichment copy$default(Enrichment enrichment, JsonObject jsonObject, JsonObject jsonObject2, int i, Object obj) {
        if ((i & 1) != 0) {
            jsonObject = enrichment._user;
        }
        if ((i & 2) != 0) {
            jsonObject2 = enrichment._device;
        }
        return enrichment.copy(jsonObject, jsonObject2);
    }

    @SerialName("device")
    private static /* synthetic */ void get_device$annotations() {
    }

    @SerialName("user")
    private static /* synthetic */ void get_user$annotations() {
    }

    public final Enrichment copy(JsonObject _user, JsonObject _device) {
        Intrinsics.checkNotNullParameter(_user, "_user");
        Intrinsics.checkNotNullParameter(_device, "_device");
        return new Enrichment(_user, _device);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Enrichment)) {
            return false;
        }
        Enrichment enrichment = (Enrichment) other;
        return Intrinsics.areEqual(this._user, enrichment._user) && Intrinsics.areEqual(this._device, enrichment._device);
    }

    public int hashCode() {
        return (this._user.hashCode() * 31) + this._device.hashCode();
    }

    public String toString() {
        return "Enrichment(_user=" + this._user + ", _device=" + this._device + ")";
    }

    public /* synthetic */ Enrichment(int i, JsonObject jsonObject, JsonObject jsonObject2, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, Enrichment$$serializer.INSTANCE.getDescriptor());
        }
        this._user = jsonObject;
        this._device = jsonObject2;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(Enrichment self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeSerializableElement(serialDesc, 0, JsonObjectSerializer.INSTANCE, self._user);
        output.encodeSerializableElement(serialDesc, 1, JsonObjectSerializer.INSTANCE, self._device);
    }

    public Enrichment(JsonObject _user, JsonObject _device) {
        Intrinsics.checkNotNullParameter(_user, "_user");
        Intrinsics.checkNotNullParameter(_device, "_device");
        this._user = _user;
        this._device = _device;
    }

    /* JADX INFO: compiled from: Enrichment.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/models/enrichment/Enrichment$Companion;", "", "<init>", "()V", "stub", "Lcom/superwall/sdk/models/enrichment/Enrichment;", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<Enrichment> serializer() {
            return Enrichment$$serializer.INSTANCE;
        }

        public final Enrichment stub() {
            return new Enrichment(new JsonObject(MapsKt.emptyMap()), new JsonObject(MapsKt.mapOf(TuplesKt.to("demandTier", ConvertersKt.convertToJsonElement("silver")))));
        }
    }

    public final Map<String, Object> getUser() {
        JsonObject jsonObject = this._user;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, JsonElement> entry : jsonObject.entrySet()) {
            if (!(entry.getValue() instanceof JsonNull)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            String str = (String) entry2.getKey();
            Object objConvertFromJsonElement = ConvertersKt.convertFromJsonElement((JsonElement) entry2.getValue());
            Pair pair = objConvertFromJsonElement != null ? TuplesKt.to(str, objConvertFromJsonElement) : null;
            if (pair != null) {
                arrayList.add(pair);
            }
        }
        return MapsKt.toMap(arrayList);
    }

    public final Map<String, Object> getDevice() {
        JsonObject jsonObject = this._device;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, JsonElement> entry : jsonObject.entrySet()) {
            if (!(entry.getValue() instanceof JsonNull)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            String str = (String) entry2.getKey();
            Object objConvertFromJsonElement = ConvertersKt.convertFromJsonElement((JsonElement) entry2.getValue());
            Pair pair = objConvertFromJsonElement != null ? TuplesKt.to(str, objConvertFromJsonElement) : null;
            if (pair != null) {
                arrayList.add(pair);
            }
        }
        return MapsKt.toMap(arrayList);
    }
}
