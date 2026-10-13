package com.superwall.sdk.game;

import com.reactcommunity.rndatetimepicker.RNConstants;
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

/* JADX INFO: compiled from: GameControllerEvent.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b&\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 ?2\u00020\u0001:\u0002>?B9\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fBO\b\u0010\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\n\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u000b\u0010\u0011J\t\u0010+\u001a\u00020\u0003HÆ\u0003J\t\u0010,\u001a\u00020\u0003HÆ\u0003J\t\u0010-\u001a\u00020\u0006HÆ\u0003J\t\u0010.\u001a\u00020\u0006HÆ\u0003J\t\u0010/\u001a\u00020\u0006HÆ\u0003J\t\u00100\u001a\u00020\nHÆ\u0003JE\u00101\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u00102\u001a\u00020\n2\b\u00103\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00104\u001a\u00020\u000eHÖ\u0001J\t\u00105\u001a\u00020\u0003HÖ\u0001J%\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u00002\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<H\u0001¢\u0006\u0002\b=R$\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R$\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0018\u0010\u0013\u001a\u0004\b\u0019\u0010\u0015\"\u0004\b\u001a\u0010\u0017R$\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u001b\u0010\u0013\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR$\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b \u0010\u0013\u001a\u0004\b!\u0010\u001d\"\u0004\b\"\u0010\u001fR$\u0010\b\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b#\u0010\u0013\u001a\u0004\b$\u0010\u001d\"\u0004\b%\u0010\u001fR$\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b&\u0010\u0013\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*¨\u0006@"}, d2 = {"Lcom/superwall/sdk/game/GameControllerEvent;", "", "eventName", "", "controllerElement", RNConstants.ARG_VALUE, "", "x", "y", "directional", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;DDDZ)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;DDDZLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getEventName$annotations", "()V", "getEventName", "()Ljava/lang/String;", "setEventName", "(Ljava/lang/String;)V", "getControllerElement$annotations", "getControllerElement", "setControllerElement", "getValue$annotations", "getValue", "()D", "setValue", "(D)V", "getX$annotations", "getX", "setX", "getY$annotations", "getY", "setY", "getDirectional$annotations", "getDirectional", "()Z", "setDirectional", "(Z)V", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class GameControllerEvent {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private String controllerElement;
    private boolean directional;
    private String eventName;
    private double value;
    private double x;
    private double y;

    public static /* synthetic */ GameControllerEvent copy$default(GameControllerEvent gameControllerEvent, String str, String str2, double d, double d2, double d3, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = gameControllerEvent.eventName;
        }
        if ((i & 2) != 0) {
            str2 = gameControllerEvent.controllerElement;
        }
        if ((i & 4) != 0) {
            d = gameControllerEvent.value;
        }
        if ((i & 8) != 0) {
            d2 = gameControllerEvent.x;
        }
        if ((i & 16) != 0) {
            d3 = gameControllerEvent.y;
        }
        if ((i & 32) != 0) {
            z = gameControllerEvent.directional;
        }
        boolean z2 = z;
        double d4 = d3;
        double d5 = d2;
        return gameControllerEvent.copy(str, str2, d, d5, d4, z2);
    }

    @SerialName("controller_element")
    public static /* synthetic */ void getControllerElement$annotations() {
    }

    @SerialName("directional")
    public static /* synthetic */ void getDirectional$annotations() {
    }

    @SerialName("event_name")
    public static /* synthetic */ void getEventName$annotations() {
    }

    @SerialName(RNConstants.ARG_VALUE)
    public static /* synthetic */ void getValue$annotations() {
    }

    @SerialName("x")
    public static /* synthetic */ void getX$annotations() {
    }

    @SerialName("y")
    public static /* synthetic */ void getY$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getEventName() {
        return this.eventName;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getControllerElement() {
        return this.controllerElement;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final double getValue() {
        return this.value;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final double getX() {
        return this.x;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final double getY() {
        return this.y;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final boolean getDirectional() {
        return this.directional;
    }

    public final GameControllerEvent copy(String eventName, String controllerElement, double value, double x, double y, boolean directional) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        Intrinsics.checkNotNullParameter(controllerElement, "controllerElement");
        return new GameControllerEvent(eventName, controllerElement, value, x, y, directional);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GameControllerEvent)) {
            return false;
        }
        GameControllerEvent gameControllerEvent = (GameControllerEvent) other;
        return Intrinsics.areEqual(this.eventName, gameControllerEvent.eventName) && Intrinsics.areEqual(this.controllerElement, gameControllerEvent.controllerElement) && Double.compare(this.value, gameControllerEvent.value) == 0 && Double.compare(this.x, gameControllerEvent.x) == 0 && Double.compare(this.y, gameControllerEvent.y) == 0 && this.directional == gameControllerEvent.directional;
    }

    public int hashCode() {
        return (((((((((this.eventName.hashCode() * 31) + this.controllerElement.hashCode()) * 31) + Double.hashCode(this.value)) * 31) + Double.hashCode(this.x)) * 31) + Double.hashCode(this.y)) * 31) + Boolean.hashCode(this.directional);
    }

    public String toString() {
        return "GameControllerEvent(eventName=" + this.eventName + ", controllerElement=" + this.controllerElement + ", value=" + this.value + ", x=" + this.x + ", y=" + this.y + ", directional=" + this.directional + ")";
    }

    /* JADX INFO: compiled from: GameControllerEvent.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/game/GameControllerEvent$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/game/GameControllerEvent;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<GameControllerEvent> serializer() {
            return GameControllerEvent$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ GameControllerEvent(int i, String str, String str2, double d, double d2, double d3, boolean z, SerializationConstructorMarker serializationConstructorMarker) {
        if (62 != (i & 62)) {
            PluginExceptionsKt.throwMissingFieldException(i, 62, GameControllerEvent$$serializer.INSTANCE.getDescriptor());
        }
        if ((i & 1) == 0) {
            this.eventName = "game_controller_input";
        } else {
            this.eventName = str;
        }
        this.controllerElement = str2;
        this.value = d;
        this.x = d2;
        this.y = d3;
        this.directional = z;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(GameControllerEvent self, CompositeEncoder output, SerialDescriptor serialDesc) {
        if (output.shouldEncodeElementDefault(serialDesc, 0) || !Intrinsics.areEqual(self.eventName, "game_controller_input")) {
            output.encodeStringElement(serialDesc, 0, self.eventName);
        }
        output.encodeStringElement(serialDesc, 1, self.controllerElement);
        output.encodeDoubleElement(serialDesc, 2, self.value);
        output.encodeDoubleElement(serialDesc, 3, self.x);
        output.encodeDoubleElement(serialDesc, 4, self.y);
        output.encodeBooleanElement(serialDesc, 5, self.directional);
    }

    public GameControllerEvent(String eventName, String controllerElement, double d, double d2, double d3, boolean z) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        Intrinsics.checkNotNullParameter(controllerElement, "controllerElement");
        this.eventName = eventName;
        this.controllerElement = controllerElement;
        this.value = d;
        this.x = d2;
        this.y = d3;
        this.directional = z;
    }

    public final String getEventName() {
        return this.eventName;
    }

    public final void setEventName(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.eventName = str;
    }

    public /* synthetic */ GameControllerEvent(String str, String str2, double d, double d2, double d3, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "game_controller_input" : str, str2, d, d2, d3, z);
    }

    public final String getControllerElement() {
        return this.controllerElement;
    }

    public final void setControllerElement(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.controllerElement = str;
    }

    public final double getValue() {
        return this.value;
    }

    public final void setValue(double d) {
        this.value = d;
    }

    public final double getX() {
        return this.x;
    }

    public final void setX(double d) {
        this.x = d;
    }

    public final double getY() {
        return this.y;
    }

    public final void setY(double d) {
        this.y = d;
    }

    public final boolean getDirectional() {
        return this.directional;
    }

    public final void setDirectional(boolean z) {
        this.directional = z;
    }
}
