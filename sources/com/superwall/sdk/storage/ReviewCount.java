package com.superwall.sdk.storage;

import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: CacheKeys.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 (2\u00020\u0001:\u0002'(B\u001b\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007B+\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\u000bJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001J%\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0001¢\u0006\u0002\b&R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u00138F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015¨\u0006)"}, d2 = {"Lcom/superwall/sdk/storage/ReviewCount;", "", "timesQueried", "", "timestamp", "", "<init>", "(IJ)V", "seen0", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(IIJLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getTimesQueried$annotations", "()V", "getTimesQueried", "()I", "getTimestamp", "()J", "date", "Ljava/util/Date;", "getDate", "()Ljava/util/Date;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class ReviewCount {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final int timesQueried;
    private final long timestamp;

    public ReviewCount() {
        this(0, 0L, 3, (DefaultConstructorMarker) null);
    }

    public static /* synthetic */ ReviewCount copy$default(ReviewCount reviewCount, int i, long j, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = reviewCount.timesQueried;
        }
        if ((i2 & 2) != 0) {
            j = reviewCount.timestamp;
        }
        return reviewCount.copy(i, j);
    }

    @SerialName("times_queried")
    public static /* synthetic */ void getTimesQueried$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getTimesQueried() {
        return this.timesQueried;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getTimestamp() {
        return this.timestamp;
    }

    public final ReviewCount copy(int timesQueried, long timestamp) {
        return new ReviewCount(timesQueried, timestamp);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ReviewCount)) {
            return false;
        }
        ReviewCount reviewCount = (ReviewCount) other;
        return this.timesQueried == reviewCount.timesQueried && this.timestamp == reviewCount.timestamp;
    }

    public int hashCode() {
        return (Integer.hashCode(this.timesQueried) * 31) + Long.hashCode(this.timestamp);
    }

    public String toString() {
        return "ReviewCount(timesQueried=" + this.timesQueried + ", timestamp=" + this.timestamp + ")";
    }

    /* JADX INFO: compiled from: CacheKeys.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/storage/ReviewCount$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/storage/ReviewCount;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<ReviewCount> serializer() {
            return ReviewCount$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ ReviewCount(int i, int i2, long j, SerializationConstructorMarker serializationConstructorMarker) {
        this.timesQueried = (i & 1) == 0 ? 0 : i2;
        if ((i & 2) == 0) {
            this.timestamp = new Date().getTime();
        } else {
            this.timestamp = j;
        }
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(ReviewCount self, CompositeEncoder output, SerialDescriptor serialDesc) {
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.timesQueried != 0) {
            output.encodeIntElement(serialDesc, 0, self.timesQueried);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 1) && self.timestamp == new Date().getTime()) {
            return;
        }
        output.encodeLongElement(serialDesc, 1, self.timestamp);
    }

    public ReviewCount(int i, long j) {
        this.timesQueried = i;
        this.timestamp = j;
    }

    public final int getTimesQueried() {
        return this.timesQueried;
    }

    public /* synthetic */ ReviewCount(int i, long j, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? new Date().getTime() : j);
    }

    public final long getTimestamp() {
        return this.timestamp;
    }

    public final Date getDate() {
        return new Date(this.timestamp);
    }
}
