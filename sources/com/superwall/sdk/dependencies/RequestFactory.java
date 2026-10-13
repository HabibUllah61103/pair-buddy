package com.superwall.sdk.dependencies;

import android.app.Activity;
import com.superwall.sdk.models.entitlements.SubscriptionStatus;
import com.superwall.sdk.models.events.EventData;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequest;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequestType;
import com.superwall.sdk.paywall.presentation.internal.request.PaywallOverrides;
import com.superwall.sdk.paywall.presentation.internal.request.PresentationInfo;
import com.superwall.sdk.paywall.request.PaywallRequest;
import com.superwall.sdk.paywall.request.ResponseIdentifiers;
import kotlin.Metadata;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: compiled from: FactoryProtocols.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J6\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH&J]\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0012\b\u0002\u0010\u0016\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0018\u0018\u00010\u00172\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u001bH&¢\u0006\u0002\u0010\u001c¨\u0006\u001d"}, d2 = {"Lcom/superwall/sdk/dependencies/RequestFactory;", "", "makePaywallRequest", "Lcom/superwall/sdk/paywall/request/PaywallRequest;", "eventData", "Lcom/superwall/sdk/models/events/EventData;", "responseIdentifiers", "Lcom/superwall/sdk/paywall/request/ResponseIdentifiers;", "overrides", "Lcom/superwall/sdk/paywall/request/PaywallRequest$Overrides;", "isDebuggerLaunched", "", "presentationSourceType", "", "makePresentationRequest", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", "presentationInfo", "Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;", "paywallOverrides", "Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;", "presenter", "Landroid/app/Activity;", "subscriptionStatus", "Lkotlinx/coroutines/flow/StateFlow;", "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;", "isPaywallPresented", "type", "Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;", "(Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;Landroid/app/Activity;Ljava/lang/Boolean;Lkotlinx/coroutines/flow/StateFlow;ZLcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;)Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface RequestFactory {
    PaywallRequest makePaywallRequest(EventData eventData, ResponseIdentifiers responseIdentifiers, PaywallRequest.Overrides overrides, boolean isDebuggerLaunched, String presentationSourceType);

    PresentationRequest makePresentationRequest(PresentationInfo presentationInfo, PaywallOverrides paywallOverrides, Activity presenter, Boolean isDebuggerLaunched, StateFlow<? extends SubscriptionStatus> subscriptionStatus, boolean isPaywallPresented, PresentationRequestType type);

    /* JADX INFO: compiled from: FactoryProtocols.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public static final class DefaultImpls {
        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ PresentationRequest makePresentationRequest$default(RequestFactory requestFactory, PresentationInfo presentationInfo, PaywallOverrides paywallOverrides, Activity activity, Boolean bool, StateFlow stateFlow, boolean z, PresentationRequestType presentationRequestType, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: makePresentationRequest");
            }
            if ((i & 2) != 0) {
                paywallOverrides = null;
            }
            if ((i & 4) != 0) {
                activity = null;
            }
            if ((i & 8) != 0) {
                bool = null;
            }
            if ((i & 16) != 0) {
                stateFlow = null;
            }
            return requestFactory.makePresentationRequest(presentationInfo, paywallOverrides, activity, bool, stateFlow, z, presentationRequestType);
        }
    }
}
