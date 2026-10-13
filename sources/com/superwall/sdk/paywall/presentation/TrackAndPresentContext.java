package com.superwall.sdk.paywall.presentation;

import com.superwall.sdk.analytics.internal.TrackingResult;
import com.superwall.sdk.analytics.internal.trackable.UserInitiatedEvent;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequest;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequestType;
import com.superwall.sdk.paywall.presentation.internal.request.PaywallOverrides;
import com.superwall.sdk.paywall.presentation.internal.request.PresentationInfo;
import com.superwall.sdk.paywall.presentation.internal.state.PaywallState;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.MutableSharedFlow;

/* JADX INFO: compiled from: PublicPresentation.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0014\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0080\b\u0018\u00002\u00020\u0001B\u0097\u0001\u0012(\u0010\u0002\u001a$\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0003\u0012&\u0010\b\u001a\"\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\t\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u0010\u0012.\u0010\u0011\u001a*\b\u0001\u0012\u0004\u0012\u00020\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u0013\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0012¢\u0006\u0004\b\u0016\u0010\u0017J0\u0010!\u001a$\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0019J)\u0010\"\u001a\"\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\tHÆ\u0003J\u000f\u0010#\u001a\b\u0012\u0004\u0012\u00020\f0\u0010HÆ\u0003J6\u0010$\u001a*\b\u0001\u0012\u0004\u0012\u00020\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u0013\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0012HÆ\u0003¢\u0006\u0002\u0010\u001fJ¦\u0001\u0010%\u001a\u00020\u00002*\b\u0002\u0010\u0002\u001a$\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00032(\b\u0002\u0010\b\u001a\"\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\t2\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u001020\b\u0002\u0010\u0011\u001a*\b\u0001\u0012\u0004\u0012\u00020\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u0013\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0012HÆ\u0001¢\u0006\u0002\u0010&J\u0013\u0010'\u001a\u00020\f2\b\u0010(\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010)\u001a\u00020*HÖ\u0001J\t\u0010+\u001a\u00020,HÖ\u0001R5\u0010\u0002\u001a$\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0003¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u0018\u0010\u0019R1\u0010\b\u001a\"\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\t¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0017\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u001dR;\u0010\u0011\u001a*\b\u0001\u0012\u0004\u0012\u00020\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u0013\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0012¢\u0006\n\n\u0002\u0010 \u001a\u0004\b\u001e\u0010\u001f¨\u0006-"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;", "", "track", "Lkotlin/Function2;", "Lcom/superwall/sdk/analytics/internal/trackable/UserInitiatedEvent$Track;", "Lkotlin/coroutines/Continuation;", "Lkotlin/Result;", "Lcom/superwall/sdk/analytics/internal/TrackingResult;", "makePresentationRequest", "Lkotlin/Function4;", "Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;", "Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;", "", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", "isPaywallPresented", "Lkotlin/Function0;", "present", "Lkotlin/Function3;", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallState;", "", "<init>", "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;)V", "getTrack", "()Lkotlin/jvm/functions/Function2;", "Lkotlin/jvm/functions/Function2;", "getMakePresentationRequest", "()Lkotlin/jvm/functions/Function4;", "()Lkotlin/jvm/functions/Function0;", "getPresent", "()Lkotlin/jvm/functions/Function3;", "Lkotlin/jvm/functions/Function3;", "component1", "component2", "component3", "component4", "copy", "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;)Lcom/superwall/sdk/paywall/presentation/TrackAndPresentContext;", "equals", "other", "hashCode", "", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class TrackAndPresentContext {
    private final Function0<Boolean> isPaywallPresented;
    private final Function4<PresentationInfo, PaywallOverrides, Boolean, PresentationRequestType, PresentationRequest> makePresentationRequest;
    private final Function3<PresentationRequest, MutableSharedFlow<PaywallState>, Continuation<? super Unit>, Object> present;
    private final Function2<UserInitiatedEvent.Track, Continuation<? super Result<TrackingResult>>, Object> track;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TrackAndPresentContext copy$default(TrackAndPresentContext trackAndPresentContext, Function2 function2, Function4 function4, Function0 function0, Function3 function3, int i, Object obj) {
        if ((i & 1) != 0) {
            function2 = trackAndPresentContext.track;
        }
        if ((i & 2) != 0) {
            function4 = trackAndPresentContext.makePresentationRequest;
        }
        if ((i & 4) != 0) {
            function0 = trackAndPresentContext.isPaywallPresented;
        }
        if ((i & 8) != 0) {
            function3 = trackAndPresentContext.present;
        }
        return trackAndPresentContext.copy(function2, function4, function0, function3);
    }

    public final Function2<UserInitiatedEvent.Track, Continuation<? super Result<TrackingResult>>, Object> component1() {
        return this.track;
    }

    public final Function4<PresentationInfo, PaywallOverrides, Boolean, PresentationRequestType, PresentationRequest> component2() {
        return this.makePresentationRequest;
    }

    public final Function0<Boolean> component3() {
        return this.isPaywallPresented;
    }

    public final Function3<PresentationRequest, MutableSharedFlow<PaywallState>, Continuation<? super Unit>, Object> component4() {
        return this.present;
    }

    public final TrackAndPresentContext copy(Function2<? super UserInitiatedEvent.Track, ? super Continuation<? super Result<TrackingResult>>, ? extends Object> track, Function4<? super PresentationInfo, ? super PaywallOverrides, ? super Boolean, ? super PresentationRequestType, PresentationRequest> makePresentationRequest, Function0<Boolean> isPaywallPresented, Function3<? super PresentationRequest, ? super MutableSharedFlow<PaywallState>, ? super Continuation<? super Unit>, ? extends Object> present) {
        Intrinsics.checkNotNullParameter(track, "track");
        Intrinsics.checkNotNullParameter(makePresentationRequest, "makePresentationRequest");
        Intrinsics.checkNotNullParameter(isPaywallPresented, "isPaywallPresented");
        Intrinsics.checkNotNullParameter(present, "present");
        return new TrackAndPresentContext(track, makePresentationRequest, isPaywallPresented, present);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TrackAndPresentContext)) {
            return false;
        }
        TrackAndPresentContext trackAndPresentContext = (TrackAndPresentContext) other;
        return Intrinsics.areEqual(this.track, trackAndPresentContext.track) && Intrinsics.areEqual(this.makePresentationRequest, trackAndPresentContext.makePresentationRequest) && Intrinsics.areEqual(this.isPaywallPresented, trackAndPresentContext.isPaywallPresented) && Intrinsics.areEqual(this.present, trackAndPresentContext.present);
    }

    public int hashCode() {
        return (((((this.track.hashCode() * 31) + this.makePresentationRequest.hashCode()) * 31) + this.isPaywallPresented.hashCode()) * 31) + this.present.hashCode();
    }

    public String toString() {
        return "TrackAndPresentContext(track=" + this.track + ", makePresentationRequest=" + this.makePresentationRequest + ", isPaywallPresented=" + this.isPaywallPresented + ", present=" + this.present + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TrackAndPresentContext(Function2<? super UserInitiatedEvent.Track, ? super Continuation<? super Result<TrackingResult>>, ? extends Object> track, Function4<? super PresentationInfo, ? super PaywallOverrides, ? super Boolean, ? super PresentationRequestType, PresentationRequest> makePresentationRequest, Function0<Boolean> isPaywallPresented, Function3<? super PresentationRequest, ? super MutableSharedFlow<PaywallState>, ? super Continuation<? super Unit>, ? extends Object> present) {
        Intrinsics.checkNotNullParameter(track, "track");
        Intrinsics.checkNotNullParameter(makePresentationRequest, "makePresentationRequest");
        Intrinsics.checkNotNullParameter(isPaywallPresented, "isPaywallPresented");
        Intrinsics.checkNotNullParameter(present, "present");
        this.track = track;
        this.makePresentationRequest = makePresentationRequest;
        this.isPaywallPresented = isPaywallPresented;
        this.present = present;
    }

    public final Function2<UserInitiatedEvent.Track, Continuation<? super Result<TrackingResult>>, Object> getTrack() {
        return this.track;
    }

    public final Function4<PresentationInfo, PaywallOverrides, Boolean, PresentationRequestType, PresentationRequest> getMakePresentationRequest() {
        return this.makePresentationRequest;
    }

    public final Function0<Boolean> isPaywallPresented() {
        return this.isPaywallPresented;
    }

    public final Function3<PresentationRequest, MutableSharedFlow<PaywallState>, Continuation<? super Unit>, Object> getPresent() {
        return this.present;
    }
}
