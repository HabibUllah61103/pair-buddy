package com.superwall.sdk.models.paywall;

import java.util.UUID;
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
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: LocalNotification.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 72\u00020\u0001:\u000267B=\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fBU\b\u0010\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\t\u001a\u00020\n\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u000b\u0010\u0011J\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\t\u0010#\u001a\u00020\u0005HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010&\u001a\u00020\u0003HÆ\u0003J\t\u0010'\u001a\u00020\nHÆ\u0003JG\u0010(\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010,\u001a\u00020\u000eHÖ\u0001J\t\u0010-\u001a\u00020\u0003HÖ\u0001J%\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\u00002\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u000204H\u0001¢\u0006\u0002\b5R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0016\u0010\u0013\u001a\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0019\u0010\u0013\u001a\u0004\b\u001a\u0010\u0015R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001b\u0010\u0013\u001a\u0004\b\u001c\u0010\u0015R\u001c\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001d\u0010\u0013\u001a\u0004\b\u001e\u0010\u0015R\u001c\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001f\u0010\u0013\u001a\u0004\b \u0010!¨\u00068"}, d2 = {"Lcom/superwall/sdk/models/paywall/LocalNotification;", "", "id", "", "type", "Lcom/superwall/sdk/models/paywall/LocalNotificationType;", "title", "subtitle", "body", "delay", "", "<init>", "(Ljava/lang/String;Lcom/superwall/sdk/models/paywall/LocalNotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Lcom/superwall/sdk/models/paywall/LocalNotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getId$annotations", "()V", "getId", "()Ljava/lang/String;", "getType$annotations", "getType", "()Lcom/superwall/sdk/models/paywall/LocalNotificationType;", "getTitle$annotations", "getTitle", "getSubtitle$annotations", "getSubtitle", "getBody$annotations", "getBody", "getDelay$annotations", "getDelay", "()J", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class LocalNotification {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String body;
    private final long delay;
    private final String id;
    private final String subtitle;
    private final String title;
    private final LocalNotificationType type;

    public static /* synthetic */ LocalNotification copy$default(LocalNotification localNotification, String str, LocalNotificationType localNotificationType, String str2, String str3, String str4, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            str = localNotification.id;
        }
        if ((i & 2) != 0) {
            localNotificationType = localNotification.type;
        }
        if ((i & 4) != 0) {
            str2 = localNotification.title;
        }
        if ((i & 8) != 0) {
            str3 = localNotification.subtitle;
        }
        if ((i & 16) != 0) {
            str4 = localNotification.body;
        }
        if ((i & 32) != 0) {
            j = localNotification.delay;
        }
        long j2 = j;
        String str5 = str4;
        String str6 = str2;
        return localNotification.copy(str, localNotificationType, str6, str3, str5, j2);
    }

    @SerialName("body")
    public static /* synthetic */ void getBody$annotations() {
    }

    @SerialName("delay")
    public static /* synthetic */ void getDelay$annotations() {
    }

    @SerialName("id")
    public static /* synthetic */ void getId$annotations() {
    }

    @SerialName("subtitle")
    public static /* synthetic */ void getSubtitle$annotations() {
    }

    @SerialName("title")
    public static /* synthetic */ void getTitle$annotations() {
    }

    @SerialName("type")
    public static /* synthetic */ void getType$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final LocalNotificationType getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getSubtitle() {
        return this.subtitle;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getBody() {
        return this.body;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final long getDelay() {
        return this.delay;
    }

    public final LocalNotification copy(String id, LocalNotificationType type, String title, String subtitle, String body, long delay) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(body, "body");
        return new LocalNotification(id, type, title, subtitle, body, delay);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LocalNotification)) {
            return false;
        }
        LocalNotification localNotification = (LocalNotification) other;
        return Intrinsics.areEqual(this.id, localNotification.id) && Intrinsics.areEqual(this.type, localNotification.type) && Intrinsics.areEqual(this.title, localNotification.title) && Intrinsics.areEqual(this.subtitle, localNotification.subtitle) && Intrinsics.areEqual(this.body, localNotification.body) && this.delay == localNotification.delay;
    }

    public int hashCode() {
        int iHashCode = ((((this.id.hashCode() * 31) + this.type.hashCode()) * 31) + this.title.hashCode()) * 31;
        String str = this.subtitle;
        return ((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.body.hashCode()) * 31) + Long.hashCode(this.delay);
    }

    public String toString() {
        return "LocalNotification(id=" + this.id + ", type=" + this.type + ", title=" + this.title + ", subtitle=" + this.subtitle + ", body=" + this.body + ", delay=" + this.delay + ")";
    }

    /* JADX INFO: compiled from: LocalNotification.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/models/paywall/LocalNotification$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/models/paywall/LocalNotification;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<LocalNotification> serializer() {
            return LocalNotification$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ LocalNotification(int i, String str, LocalNotificationType localNotificationType, String str2, String str3, String str4, long j, SerializationConstructorMarker serializationConstructorMarker) {
        if (54 != (i & 54)) {
            PluginExceptionsKt.throwMissingFieldException(i, 54, LocalNotification$$serializer.INSTANCE.getDescriptor());
        }
        this.id = (i & 1) == 0 ? UUID.randomUUID().toString() : str;
        this.type = localNotificationType;
        this.title = str2;
        if ((i & 8) == 0) {
            this.subtitle = null;
        } else {
            this.subtitle = str3;
        }
        this.body = str4;
        this.delay = j;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(LocalNotification self, CompositeEncoder output, SerialDescriptor serialDesc) {
        if (output.shouldEncodeElementDefault(serialDesc, 0) || !Intrinsics.areEqual(self.id, UUID.randomUUID().toString())) {
            output.encodeStringElement(serialDesc, 0, self.id);
        }
        output.encodeSerializableElement(serialDesc, 1, LocalNotificationTypeSerializer.INSTANCE, self.type);
        output.encodeStringElement(serialDesc, 2, self.title);
        if (output.shouldEncodeElementDefault(serialDesc, 3) || self.subtitle != null) {
            output.encodeNullableSerializableElement(serialDesc, 3, StringSerializer.INSTANCE, self.subtitle);
        }
        output.encodeStringElement(serialDesc, 4, self.body);
        output.encodeLongElement(serialDesc, 5, self.delay);
    }

    public LocalNotification(String id, LocalNotificationType type, String title, String str, String body, long j) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(body, "body");
        this.id = id;
        this.type = type;
        this.title = title;
        this.subtitle = str;
        this.body = body;
        this.delay = j;
    }

    public final String getId() {
        return this.id;
    }

    public /* synthetic */ LocalNotification(String str, LocalNotificationType localNotificationType, String str2, String str3, String str4, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? UUID.randomUUID().toString() : str, localNotificationType, str2, (i & 8) != 0 ? null : str3, str4, j);
    }

    public final LocalNotificationType getType() {
        return this.type;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getSubtitle() {
        return this.subtitle;
    }

    public final String getBody() {
        return this.body;
    }

    public final long getDelay() {
        return this.delay;
    }
}
