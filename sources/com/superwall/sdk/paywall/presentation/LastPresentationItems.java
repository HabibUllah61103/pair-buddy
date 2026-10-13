package com.superwall.sdk.paywall.presentation;

import com.superwall.sdk.paywall.presentation.internal.PresentationRequest;
import com.superwall.sdk.paywall.presentation.internal.state.PaywallState;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.MutableSharedFlow;

/* JADX INFO: compiled from: PresentationItems.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J#\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0017"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/LastPresentationItems;", "", "request", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", "statePublisher", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;", "<init>", "(Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlinx/coroutines/flow/MutableSharedFlow;)V", "getRequest", "()Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", "getStatePublisher", "()Lkotlinx/coroutines/flow/MutableSharedFlow;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class LastPresentationItems {
    private final PresentationRequest request;
    private final MutableSharedFlow<PaywallState> statePublisher;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ LastPresentationItems copy$default(LastPresentationItems lastPresentationItems, PresentationRequest presentationRequest, MutableSharedFlow mutableSharedFlow, int i, Object obj) {
        if ((i & 1) != 0) {
            presentationRequest = lastPresentationItems.request;
        }
        if ((i & 2) != 0) {
            mutableSharedFlow = lastPresentationItems.statePublisher;
        }
        return lastPresentationItems.copy(presentationRequest, mutableSharedFlow);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final PresentationRequest getRequest() {
        return this.request;
    }

    public final MutableSharedFlow<PaywallState> component2() {
        return this.statePublisher;
    }

    public final LastPresentationItems copy(PresentationRequest request, MutableSharedFlow<PaywallState> statePublisher) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(statePublisher, "statePublisher");
        return new LastPresentationItems(request, statePublisher);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LastPresentationItems)) {
            return false;
        }
        LastPresentationItems lastPresentationItems = (LastPresentationItems) other;
        return Intrinsics.areEqual(this.request, lastPresentationItems.request) && Intrinsics.areEqual(this.statePublisher, lastPresentationItems.statePublisher);
    }

    public int hashCode() {
        return (this.request.hashCode() * 31) + this.statePublisher.hashCode();
    }

    public String toString() {
        return "LastPresentationItems(request=" + this.request + ", statePublisher=" + this.statePublisher + ")";
    }

    public LastPresentationItems(PresentationRequest request, MutableSharedFlow<PaywallState> statePublisher) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(statePublisher, "statePublisher");
        this.request = request;
        this.statePublisher = statePublisher;
    }

    public final PresentationRequest getRequest() {
        return this.request;
    }

    public final MutableSharedFlow<PaywallState> getStatePublisher() {
        return this.statePublisher;
    }
}
