package com.superwall.sdk.paywall.view.webview.templating.models;

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

/* JADX INFO: compiled from: Variables.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 $2\u00020\u0001:\u0002#$B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0006\u0010\fJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\tHÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001J%\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0001¢\u0006\u0002\b\"R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006%"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;", "", "eventName", "", "variables", "Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;", "<init>", "(Ljava/lang/String;Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getEventName$annotations", "()V", "getEventName", "()Ljava/lang/String;", "getVariables", "()Lcom/superwall/sdk/paywall/view/webview/templating/models/Variables;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class JsonVariables {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String eventName;
    private final Variables variables;

    public static /* synthetic */ JsonVariables copy$default(JsonVariables jsonVariables, String str, Variables variables, int i, Object obj) {
        if ((i & 1) != 0) {
            str = jsonVariables.eventName;
        }
        if ((i & 2) != 0) {
            variables = jsonVariables.variables;
        }
        return jsonVariables.copy(str, variables);
    }

    @SerialName("event_name")
    public static /* synthetic */ void getEventName$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getEventName() {
        return this.eventName;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Variables getVariables() {
        return this.variables;
    }

    public final JsonVariables copy(String eventName, Variables variables) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        Intrinsics.checkNotNullParameter(variables, "variables");
        return new JsonVariables(eventName, variables);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof JsonVariables)) {
            return false;
        }
        JsonVariables jsonVariables = (JsonVariables) other;
        return Intrinsics.areEqual(this.eventName, jsonVariables.eventName) && Intrinsics.areEqual(this.variables, jsonVariables.variables);
    }

    public int hashCode() {
        return (this.eventName.hashCode() * 31) + this.variables.hashCode();
    }

    public String toString() {
        return "JsonVariables(eventName=" + this.eventName + ", variables=" + this.variables + ")";
    }

    /* JADX INFO: compiled from: Variables.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/paywall/view/webview/templating/models/JsonVariables;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<JsonVariables> serializer() {
            return JsonVariables$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ JsonVariables(int i, String str, Variables variables, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, JsonVariables$$serializer.INSTANCE.getDescriptor());
        }
        this.eventName = str;
        this.variables = variables;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(JsonVariables self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeStringElement(serialDesc, 0, self.eventName);
        output.encodeSerializableElement(serialDesc, 1, Variables$$serializer.INSTANCE, self.variables);
    }

    public JsonVariables(String eventName, Variables variables) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        Intrinsics.checkNotNullParameter(variables, "variables");
        this.eventName = eventName;
        this.variables = variables;
    }

    public final String getEventName() {
        return this.eventName;
    }

    public final Variables getVariables() {
        return this.variables;
    }
}
