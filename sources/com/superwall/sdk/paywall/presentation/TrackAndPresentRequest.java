package com.superwall.sdk.paywall.presentation;

import com.superwall.sdk.paywall.presentation.internal.request.PaywallOverrides;
import com.superwall.sdk.paywall.presentation.internal.state.PaywallState;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.MutableSharedFlow;

/* JADX INFO: compiled from: PublicPresentation.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\b\n\u0002\b\u0002\b\u0080\b\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0004\b\r\u0010\u000eJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\u0017\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010\u001b\u001a\u00020\tHÆ\u0003J\u000f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\f0\u000bHÆ\u0003JQ\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0016\b\u0002\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bHÆ\u0001J\u0013\u0010\u001e\u001a\u00020\t2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020!HÖ\u0001J\t\u0010\"\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001f\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0015R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006#"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/TrackAndPresentRequest;", "", "placement", "", "params", "", "paywallOverrides", "Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;", "isFeatureGatable", "", "publisher", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;", "<init>", "(Ljava/lang/String;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;ZLkotlinx/coroutines/flow/MutableSharedFlow;)V", "getPlacement", "()Ljava/lang/String;", "getParams", "()Ljava/util/Map;", "getPaywallOverrides", "()Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;", "()Z", "getPublisher", "()Lkotlinx/coroutines/flow/MutableSharedFlow;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "", "toString", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class TrackAndPresentRequest {
    private final boolean isFeatureGatable;
    private final Map<String, Object> params;
    private final PaywallOverrides paywallOverrides;
    private final String placement;
    private final MutableSharedFlow<PaywallState> publisher;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TrackAndPresentRequest copy$default(TrackAndPresentRequest trackAndPresentRequest, String str, Map map, PaywallOverrides paywallOverrides, boolean z, MutableSharedFlow mutableSharedFlow, int i, Object obj) {
        if ((i & 1) != 0) {
            str = trackAndPresentRequest.placement;
        }
        if ((i & 2) != 0) {
            map = trackAndPresentRequest.params;
        }
        if ((i & 4) != 0) {
            paywallOverrides = trackAndPresentRequest.paywallOverrides;
        }
        if ((i & 8) != 0) {
            z = trackAndPresentRequest.isFeatureGatable;
        }
        if ((i & 16) != 0) {
            mutableSharedFlow = trackAndPresentRequest.publisher;
        }
        MutableSharedFlow mutableSharedFlow2 = mutableSharedFlow;
        PaywallOverrides paywallOverrides2 = paywallOverrides;
        return trackAndPresentRequest.copy(str, map, paywallOverrides2, z, mutableSharedFlow2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getPlacement() {
        return this.placement;
    }

    public final Map<String, Object> component2() {
        return this.params;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final PaywallOverrides getPaywallOverrides() {
        return this.paywallOverrides;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getIsFeatureGatable() {
        return this.isFeatureGatable;
    }

    public final MutableSharedFlow<PaywallState> component5() {
        return this.publisher;
    }

    public final TrackAndPresentRequest copy(String placement, Map<String, ? extends Object> params, PaywallOverrides paywallOverrides, boolean isFeatureGatable, MutableSharedFlow<PaywallState> publisher) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        Intrinsics.checkNotNullParameter(publisher, "publisher");
        return new TrackAndPresentRequest(placement, params, paywallOverrides, isFeatureGatable, publisher);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TrackAndPresentRequest)) {
            return false;
        }
        TrackAndPresentRequest trackAndPresentRequest = (TrackAndPresentRequest) other;
        return Intrinsics.areEqual(this.placement, trackAndPresentRequest.placement) && Intrinsics.areEqual(this.params, trackAndPresentRequest.params) && Intrinsics.areEqual(this.paywallOverrides, trackAndPresentRequest.paywallOverrides) && this.isFeatureGatable == trackAndPresentRequest.isFeatureGatable && Intrinsics.areEqual(this.publisher, trackAndPresentRequest.publisher);
    }

    public int hashCode() {
        int iHashCode = this.placement.hashCode() * 31;
        Map<String, Object> map = this.params;
        int iHashCode2 = (iHashCode + (map == null ? 0 : map.hashCode())) * 31;
        PaywallOverrides paywallOverrides = this.paywallOverrides;
        return ((((iHashCode2 + (paywallOverrides != null ? paywallOverrides.hashCode() : 0)) * 31) + Boolean.hashCode(this.isFeatureGatable)) * 31) + this.publisher.hashCode();
    }

    public String toString() {
        return "TrackAndPresentRequest(placement=" + this.placement + ", params=" + this.params + ", paywallOverrides=" + this.paywallOverrides + ", isFeatureGatable=" + this.isFeatureGatable + ", publisher=" + this.publisher + ")";
    }

    public TrackAndPresentRequest(String placement, Map<String, ? extends Object> map, PaywallOverrides paywallOverrides, boolean z, MutableSharedFlow<PaywallState> publisher) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        Intrinsics.checkNotNullParameter(publisher, "publisher");
        this.placement = placement;
        this.params = map;
        this.paywallOverrides = paywallOverrides;
        this.isFeatureGatable = z;
        this.publisher = publisher;
    }

    public final String getPlacement() {
        return this.placement;
    }

    public final Map<String, Object> getParams() {
        return this.params;
    }

    public final PaywallOverrides getPaywallOverrides() {
        return this.paywallOverrides;
    }

    public final boolean isFeatureGatable() {
        return this.isFeatureGatable;
    }

    public final MutableSharedFlow<PaywallState> getPublisher() {
        return this.publisher;
    }
}
