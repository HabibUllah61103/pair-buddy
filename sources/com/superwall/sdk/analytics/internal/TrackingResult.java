package com.superwall.sdk.analytics.internal;

import com.superwall.sdk.models.events.EventData;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TrackingResult.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0019"}, d2 = {"Lcom/superwall/sdk/analytics/internal/TrackingResult;", "", "data", "Lcom/superwall/sdk/models/events/EventData;", "parameters", "Lcom/superwall/sdk/analytics/internal/TrackingParameters;", "<init>", "(Lcom/superwall/sdk/models/events/EventData;Lcom/superwall/sdk/analytics/internal/TrackingParameters;)V", "getData", "()Lcom/superwall/sdk/models/events/EventData;", "setData", "(Lcom/superwall/sdk/models/events/EventData;)V", "getParameters", "()Lcom/superwall/sdk/analytics/internal/TrackingParameters;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class TrackingResult {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private EventData data;
    private final TrackingParameters parameters;

    public static /* synthetic */ TrackingResult copy$default(TrackingResult trackingResult, EventData eventData, TrackingParameters trackingParameters, int i, Object obj) {
        if ((i & 1) != 0) {
            eventData = trackingResult.data;
        }
        if ((i & 2) != 0) {
            trackingParameters = trackingResult.parameters;
        }
        return trackingResult.copy(eventData, trackingParameters);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final EventData getData() {
        return this.data;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final TrackingParameters getParameters() {
        return this.parameters;
    }

    public final TrackingResult copy(EventData data, TrackingParameters parameters) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        return new TrackingResult(data, parameters);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TrackingResult)) {
            return false;
        }
        TrackingResult trackingResult = (TrackingResult) other;
        return Intrinsics.areEqual(this.data, trackingResult.data) && Intrinsics.areEqual(this.parameters, trackingResult.parameters);
    }

    public int hashCode() {
        return (this.data.hashCode() * 31) + this.parameters.hashCode();
    }

    public String toString() {
        return "TrackingResult(data=" + this.data + ", parameters=" + this.parameters + ")";
    }

    public TrackingResult(EventData data, TrackingParameters parameters) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        this.data = data;
        this.parameters = parameters;
    }

    public final EventData getData() {
        return this.data;
    }

    public final void setData(EventData eventData) {
        Intrinsics.checkNotNullParameter(eventData, "<set-?>");
        this.data = eventData;
    }

    public final TrackingParameters getParameters() {
        return this.parameters;
    }

    /* JADX INFO: compiled from: TrackingResult.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005¨\u0006\u0006"}, d2 = {"Lcom/superwall/sdk/analytics/internal/TrackingResult$Companion;", "", "<init>", "()V", "stub", "Lcom/superwall/sdk/analytics/internal/TrackingResult;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TrackingResult stub() {
            return new TrackingResult(EventData.INSTANCE.stub(), TrackingParameters.INSTANCE.stub());
        }
    }
}
