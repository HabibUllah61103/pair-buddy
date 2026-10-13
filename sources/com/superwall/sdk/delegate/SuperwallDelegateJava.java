package com.superwall.sdk.delegate;

import android.net.Uri;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.firebase.messaging.Constants;
import com.superwall.sdk.analytics.superwall.SuperwallEventInfo;
import com.superwall.sdk.models.customer.CustomerInfo;
import com.superwall.sdk.models.internal.RedemptionResult;
import com.superwall.sdk.paywall.presentation.PaywallInfo;
import expo.modules.interfaces.permissions.PermissionsResponse;
import java.net.URI;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SuperwallDelegateJava.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0018\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016JH\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u00052\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00052\u0016\b\u0002\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0001\u0018\u00010!2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u001c\u0010$\u001a\u00020\u00032\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010!H\u0016J\u0018\u0010&\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020'2\u0006\u0010\u001b\u001a\u00020'H\u0016¨\u0006("}, d2 = {"Lcom/superwall/sdk/delegate/SuperwallDelegateJava;", "", "handleCustomPaywallAction", "", "name", "", "willRedeemLink", "didRedeemLink", "result", "Lcom/superwall/sdk/models/internal/RedemptionResult;", "willDismissPaywall", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "willPresentPaywall", "didDismissPaywall", "didPresentPaywall", "paywallWillOpenURL", ImagesContract.URL, "Ljava/net/URI;", "paywallWillOpenDeepLink", "Landroid/net/Uri;", "handleSuperwallEvent", "eventInfo", "Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;", "subscriptionStatusDidChange", Constants.MessagePayloadKeys.FROM, "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;", "to", "handleLog", "level", PermissionsResponse.SCOPE_KEY, "message", "info", "", Constants.IPC_BUNDLE_KEY_SEND_ERROR, "", "userAttributesDidChange", "newAttributes", "customerInfoDidChange", "Lcom/superwall/sdk/models/customer/CustomerInfo;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface SuperwallDelegateJava {
    void customerInfoDidChange(CustomerInfo from, CustomerInfo to);

    void didDismissPaywall(PaywallInfo paywallInfo);

    void didPresentPaywall(PaywallInfo paywallInfo);

    void didRedeemLink(RedemptionResult result);

    void handleCustomPaywallAction(String name);

    void handleLog(String level, String scope, String message, Map<String, ? extends Object> info, Throwable error);

    void handleSuperwallEvent(SuperwallEventInfo eventInfo);

    void paywallWillOpenDeepLink(Uri url);

    void paywallWillOpenURL(URI url);

    void subscriptionStatusDidChange(com.superwall.sdk.models.entitlements.SubscriptionStatus from, com.superwall.sdk.models.entitlements.SubscriptionStatus to);

    void userAttributesDidChange(Map<String, ? extends Object> newAttributes);

    void willDismissPaywall(PaywallInfo paywallInfo);

    void willPresentPaywall(PaywallInfo paywallInfo);

    void willRedeemLink();

    /* JADX INFO: compiled from: SuperwallDelegateJava.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public static final class DefaultImpls {
        public static void customerInfoDidChange(SuperwallDelegateJava superwallDelegateJava, CustomerInfo from, CustomerInfo to) {
            Intrinsics.checkNotNullParameter(from, "from");
            Intrinsics.checkNotNullParameter(to, "to");
        }

        public static void didDismissPaywall(SuperwallDelegateJava superwallDelegateJava, PaywallInfo paywallInfo) {
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
        }

        public static void didPresentPaywall(SuperwallDelegateJava superwallDelegateJava, PaywallInfo paywallInfo) {
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
        }

        public static void didRedeemLink(SuperwallDelegateJava superwallDelegateJava, RedemptionResult result) {
            Intrinsics.checkNotNullParameter(result, "result");
        }

        public static void handleCustomPaywallAction(SuperwallDelegateJava superwallDelegateJava, String name) {
            Intrinsics.checkNotNullParameter(name, "name");
        }

        public static void handleLog(SuperwallDelegateJava superwallDelegateJava, String level, String scope, String str, Map<String, ? extends Object> map, Throwable th) {
            Intrinsics.checkNotNullParameter(level, "level");
            Intrinsics.checkNotNullParameter(scope, "scope");
        }

        public static void handleSuperwallEvent(SuperwallDelegateJava superwallDelegateJava, SuperwallEventInfo eventInfo) {
            Intrinsics.checkNotNullParameter(eventInfo, "eventInfo");
        }

        public static void paywallWillOpenDeepLink(SuperwallDelegateJava superwallDelegateJava, Uri url) {
            Intrinsics.checkNotNullParameter(url, "url");
        }

        public static void paywallWillOpenURL(SuperwallDelegateJava superwallDelegateJava, URI url) {
            Intrinsics.checkNotNullParameter(url, "url");
        }

        public static void subscriptionStatusDidChange(SuperwallDelegateJava superwallDelegateJava, com.superwall.sdk.models.entitlements.SubscriptionStatus from, com.superwall.sdk.models.entitlements.SubscriptionStatus to) {
            Intrinsics.checkNotNullParameter(from, "from");
            Intrinsics.checkNotNullParameter(to, "to");
        }

        public static void userAttributesDidChange(SuperwallDelegateJava superwallDelegateJava, Map<String, ? extends Object> newAttributes) {
            Intrinsics.checkNotNullParameter(newAttributes, "newAttributes");
        }

        public static void willDismissPaywall(SuperwallDelegateJava superwallDelegateJava, PaywallInfo paywallInfo) {
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
        }

        public static void willPresentPaywall(SuperwallDelegateJava superwallDelegateJava, PaywallInfo paywallInfo) {
            Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
        }

        public static void willRedeemLink(SuperwallDelegateJava superwallDelegateJava) {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void handleLog$default(SuperwallDelegateJava superwallDelegateJava, String str, String str2, String str3, Map map, Throwable th, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: handleLog");
            }
            if ((i & 4) != 0) {
                str3 = null;
            }
            if ((i & 8) != 0) {
                map = null;
            }
            if ((i & 16) != 0) {
                th = null;
            }
            superwallDelegateJava.handleLog(str, str2, str3, map, th);
        }
    }
}
