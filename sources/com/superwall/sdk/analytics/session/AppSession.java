package com.superwall.sdk.analytics.session;

import com.superwall.sdk.models.serialization.DateSerializer;
import java.util.Date;
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
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: AppSession.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 -2\u00020\u0001:\u0002-.B'\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bB9\b\u0010\u0012\u0006\u0010\t\u001a\u00020\n\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0007\u0010\rJ\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0005HÆ\u0003J)\u0010\u001f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010#\u001a\u00020\nHÖ\u0001J\t\u0010$\u001a\u00020\u0003HÖ\u0001J%\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u00002\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0001¢\u0006\u0002\b,R$\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R$\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0014\u0010\u000f\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R&\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0019\u0010\u000f\u001a\u0004\b\u001a\u0010\u0016\"\u0004\b\u001b\u0010\u0018¨\u0006/"}, d2 = {"Lcom/superwall/sdk/analytics/session/AppSession;", "", "id", "", "startAt", "Ljava/util/Date;", "endAt", "<init>", "(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/util/Date;Ljava/util/Date;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getId$annotations", "()V", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "getStartAt$annotations", "getStartAt", "()Ljava/util/Date;", "setStartAt", "(Ljava/util/Date;)V", "getEndAt$annotations", "getEndAt", "setEndAt", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "Companion", "$serializer", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class AppSession {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private Date endAt;
    private String id;
    private Date startAt;

    public AppSession() {
        this((String) null, (Date) null, (Date) null, 7, (DefaultConstructorMarker) null);
    }

    public static /* synthetic */ AppSession copy$default(AppSession appSession, String str, Date date, Date date2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = appSession.id;
        }
        if ((i & 2) != 0) {
            date = appSession.startAt;
        }
        if ((i & 4) != 0) {
            date2 = appSession.endAt;
        }
        return appSession.copy(str, date, date2);
    }

    @SerialName("app_session_end_ts")
    @Serializable(with = DateSerializer.class)
    public static /* synthetic */ void getEndAt$annotations() {
    }

    @SerialName("app_session_id")
    public static /* synthetic */ void getId$annotations() {
    }

    @SerialName("app_session_start_ts")
    @Serializable(with = DateSerializer.class)
    public static /* synthetic */ void getStartAt$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Date getStartAt() {
        return this.startAt;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Date getEndAt() {
        return this.endAt;
    }

    public final AppSession copy(String id, Date startAt, Date endAt) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(startAt, "startAt");
        return new AppSession(id, startAt, endAt);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AppSession)) {
            return false;
        }
        AppSession appSession = (AppSession) other;
        return Intrinsics.areEqual(this.id, appSession.id) && Intrinsics.areEqual(this.startAt, appSession.startAt) && Intrinsics.areEqual(this.endAt, appSession.endAt);
    }

    public int hashCode() {
        int iHashCode = ((this.id.hashCode() * 31) + this.startAt.hashCode()) * 31;
        Date date = this.endAt;
        return iHashCode + (date == null ? 0 : date.hashCode());
    }

    public String toString() {
        return "AppSession(id=" + this.id + ", startAt=" + this.startAt + ", endAt=" + this.endAt + ")";
    }

    public /* synthetic */ AppSession(int i, String str, Date date, Date date2, SerializationConstructorMarker serializationConstructorMarker) {
        this.id = (i & 1) == 0 ? UUID.randomUUID().toString() : str;
        if ((i & 2) == 0) {
            this.startAt = new Date();
        } else {
            this.startAt = date;
        }
        if ((i & 4) == 0) {
            this.endAt = null;
        } else {
            this.endAt = date2;
        }
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(AppSession self, CompositeEncoder output, SerialDescriptor serialDesc) {
        if (output.shouldEncodeElementDefault(serialDesc, 0) || !Intrinsics.areEqual(self.id, UUID.randomUUID().toString())) {
            output.encodeStringElement(serialDesc, 0, self.id);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 1) || !Intrinsics.areEqual(self.startAt, new Date())) {
            output.encodeSerializableElement(serialDesc, 1, DateSerializer.INSTANCE, self.startAt);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 2) && self.endAt == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 2, DateSerializer.INSTANCE, self.endAt);
    }

    public AppSession(String id, Date startAt, Date date) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(startAt, "startAt");
        this.id = id;
        this.startAt = startAt;
        this.endAt = date;
    }

    public /* synthetic */ AppSession(String str, Date date, Date date2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? UUID.randomUUID().toString() : str, (i & 2) != 0 ? new Date() : date, (i & 4) != 0 ? null : date2);
    }

    public final String getId() {
        return this.id;
    }

    public final void setId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.id = str;
    }

    public final Date getStartAt() {
        return this.startAt;
    }

    public final void setStartAt(Date date) {
        Intrinsics.checkNotNullParameter(date, "<set-?>");
        this.startAt = date;
    }

    public final Date getEndAt() {
        return this.endAt;
    }

    public final void setEndAt(Date date) {
        this.endAt = date;
    }

    /* JADX INFO: compiled from: AppSession.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/analytics/session/AppSession$Companion;", "", "<init>", "()V", "stub", "Lcom/superwall/sdk/analytics/session/AppSession;", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<AppSession> serializer() {
            return AppSession$$serializer.INSTANCE;
        }

        public final AppSession stub() {
            return new AppSession((String) null, (Date) null, (Date) null, 7, (DefaultConstructorMarker) null);
        }
    }
}
