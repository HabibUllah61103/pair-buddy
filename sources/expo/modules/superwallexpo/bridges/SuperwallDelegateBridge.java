package expo.modules.superwallexpo.bridges;

import android.net.Uri;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.firebase.messaging.Constants;
import com.superwall.sdk.analytics.superwall.SuperwallEventInfo;
import com.superwall.sdk.delegate.SuperwallDelegate;
import com.superwall.sdk.models.customer.CustomerInfo;
import com.superwall.sdk.models.entitlements.SubscriptionStatus;
import com.superwall.sdk.models.internal.RedemptionResult;
import com.superwall.sdk.paywall.presentation.PaywallInfo;
import expo.modules.interfaces.permissions.PermissionsResponse;
import expo.modules.superwallexpo.SuperwallExpoModule;
import expo.modules.superwallexpo.json.PaywallInfoKt;
import expo.modules.superwallexpo.json.RedemptionResultKt;
import expo.modules.superwallexpo.json.SubscriptionStatusKt;
import expo.modules.superwallexpo.json.SuperwallEventInfoKt;
import java.net.URI;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SuperwallDelegateBridge.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0019H\u0016JB\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u000e2\b\u0010\u001d\u001a\u0004\u0018\u00010\u000e2\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020 \u0018\u00010\u001f2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0016J&\u0010#\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0014\u0010$\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0006\u0012\u0004\u0018\u00010 0\u001fH\u0002J\b\u0010%\u001a\u00020\u0005H\u0016J\u0010\u0010&\u001a\u00020\u00052\u0006\u0010'\u001a\u00020(H\u0016¨\u0006)"}, d2 = {"Lexpo/modules/superwallexpo/bridges/SuperwallDelegateBridge;", "Lcom/superwall/sdk/delegate/SuperwallDelegate;", "<init>", "()V", "subscriptionStatusDidChange", "", "oldValue", "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;", "newValue", "handleSuperwallEvent", "eventInfo", "Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;", "handleCustomPaywallAction", "name", "", "willDismissPaywall", "withInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "willPresentPaywall", "didDismissPaywall", "didPresentPaywall", "paywallWillOpenURL", ImagesContract.URL, "Ljava/net/URI;", "paywallWillOpenDeepLink", "Landroid/net/Uri;", "handleLog", "level", PermissionsResponse.SCOPE_KEY, "message", "info", "", "", Constants.IPC_BUNDLE_KEY_SEND_ERROR, "", "sendEvent", "body", "willRedeemLink", "didRedeemLink", "result", "Lcom/superwall/sdk/models/internal/RedemptionResult;", "expo-superwall_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SuperwallDelegateBridge implements SuperwallDelegate {
    @Override // com.superwall.sdk.delegate.SuperwallDelegate
    public void customerInfoDidChange(CustomerInfo customerInfo, CustomerInfo customerInfo2) {
        SuperwallDelegate.DefaultImpls.customerInfoDidChange(this, customerInfo, customerInfo2);
    }

    @Override // com.superwall.sdk.delegate.SuperwallDelegate
    public void userAttributesDidChange(Map<String, ? extends Object> map) {
        SuperwallDelegate.DefaultImpls.userAttributesDidChange(this, map);
    }

    @Override // com.superwall.sdk.delegate.SuperwallDelegate
    public void subscriptionStatusDidChange(SubscriptionStatus oldValue, SubscriptionStatus newValue) {
        Intrinsics.checkNotNullParameter(oldValue, "oldValue");
        Intrinsics.checkNotNullParameter(newValue, "newValue");
        sendEvent("subscriptionStatusDidChange", MapsKt.mapOf(TuplesKt.to(Constants.MessagePayloadKeys.FROM, SubscriptionStatusKt.toJson(oldValue)), TuplesKt.to("to", SubscriptionStatusKt.toJson(newValue))));
    }

    @Override // com.superwall.sdk.delegate.SuperwallDelegate
    public void handleSuperwallEvent(SuperwallEventInfo eventInfo) {
        Intrinsics.checkNotNullParameter(eventInfo, "eventInfo");
        sendEvent("handleSuperwallEvent", MapsKt.mapOf(TuplesKt.to("eventInfo", SuperwallEventInfoKt.toJson(eventInfo))));
    }

    @Override // com.superwall.sdk.delegate.SuperwallDelegate
    public void handleCustomPaywallAction(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        sendEvent("handleCustomPaywallAction", MapsKt.mapOf(TuplesKt.to("name", name)));
    }

    @Override // com.superwall.sdk.delegate.SuperwallDelegate
    public void willDismissPaywall(PaywallInfo withInfo) {
        Intrinsics.checkNotNullParameter(withInfo, "withInfo");
        sendEvent("willDismissPaywall", MapsKt.mapOf(TuplesKt.to("info", PaywallInfoKt.toJson(withInfo))));
    }

    @Override // com.superwall.sdk.delegate.SuperwallDelegate
    public void willPresentPaywall(PaywallInfo withInfo) {
        Intrinsics.checkNotNullParameter(withInfo, "withInfo");
        sendEvent("willPresentPaywall", MapsKt.mapOf(TuplesKt.to("info", PaywallInfoKt.toJson(withInfo))));
    }

    @Override // com.superwall.sdk.delegate.SuperwallDelegate
    public void didDismissPaywall(PaywallInfo withInfo) {
        Intrinsics.checkNotNullParameter(withInfo, "withInfo");
        sendEvent("didDismissPaywall", MapsKt.mapOf(TuplesKt.to("info", PaywallInfoKt.toJson(withInfo))));
    }

    @Override // com.superwall.sdk.delegate.SuperwallDelegate
    public void didPresentPaywall(PaywallInfo withInfo) {
        Intrinsics.checkNotNullParameter(withInfo, "withInfo");
        sendEvent("didPresentPaywall", MapsKt.mapOf(TuplesKt.to("info", PaywallInfoKt.toJson(withInfo))));
    }

    @Override // com.superwall.sdk.delegate.SuperwallDelegate
    public void paywallWillOpenURL(URI url) {
        Intrinsics.checkNotNullParameter(url, "url");
        sendEvent("paywallWillOpenURL", MapsKt.mapOf(TuplesKt.to(ImagesContract.URL, url.toString())));
    }

    @Override // com.superwall.sdk.delegate.SuperwallDelegate
    public void paywallWillOpenDeepLink(Uri url) {
        Intrinsics.checkNotNullParameter(url, "url");
        sendEvent("paywallWillOpenDeepLink", MapsKt.mapOf(TuplesKt.to(ImagesContract.URL, url.toString())));
    }

    @Override // com.superwall.sdk.delegate.SuperwallDelegate
    public void handleLog(String level, String scope, String message, Map<String, ? extends Object> info, Throwable error) {
        Intrinsics.checkNotNullParameter(level, "level");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Pair[] pairArr = new Pair[5];
        pairArr[0] = TuplesKt.to("level", level);
        pairArr[1] = TuplesKt.to(PermissionsResponse.SCOPE_KEY, scope);
        pairArr[2] = TuplesKt.to("message", message);
        pairArr[3] = TuplesKt.to("info", info);
        pairArr[4] = TuplesKt.to(Constants.IPC_BUNDLE_KEY_SEND_ERROR, error != null ? error.getLocalizedMessage() : null);
        sendEvent("handleLog", MapsKt.mapOf(pairArr));
    }

    private final void sendEvent(String name, Map<String, ? extends Object> body) {
        SuperwallExpoModule.INSTANCE.emitEvent(name, body);
    }

    @Override // com.superwall.sdk.delegate.SuperwallDelegate
    public void willRedeemLink() {
        sendEvent("willRedeemLink", MapsKt.emptyMap());
    }

    @Override // com.superwall.sdk.delegate.SuperwallDelegate
    public void didRedeemLink(RedemptionResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        sendEvent("didRedeemLink", RedemptionResultKt.toJson(result));
    }
}
