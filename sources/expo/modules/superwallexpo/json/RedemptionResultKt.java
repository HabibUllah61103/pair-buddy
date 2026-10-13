package expo.modules.superwallexpo.json;

import com.google.firebase.messaging.Constants;
import com.superwall.sdk.identity.Keys;
import com.superwall.sdk.models.entitlements.Entitlement;
import com.superwall.sdk.models.internal.ErrorInfo;
import com.superwall.sdk.models.internal.ExpiredInfo;
import com.superwall.sdk.models.internal.PurchaserInfo;
import com.superwall.sdk.models.internal.RedemptionInfo;
import com.superwall.sdk.models.internal.RedemptionOwnership;
import com.superwall.sdk.models.internal.RedemptionResult;
import com.superwall.sdk.models.internal.StoreIdentifiers;
import expo.modules.notifications.service.NotificationsService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.JsonElement;

/* JADX INFO: compiled from: RedemptionResult.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0016\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004\u001a\u0018\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0005H\u0002\u001a\u0018\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0006H\u0002\u001a\u0018\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0007H\u0002\u001a\u0018\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\bH\u0002\u001a\u0018\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\tH\u0002\u001a\u0018\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\nH\u0002\u001a\u0018\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u000bH\u0002¨\u0006\f"}, d2 = {"toJson", "", "", "", "Lcom/superwall/sdk/models/internal/RedemptionResult;", "Lcom/superwall/sdk/models/internal/RedemptionInfo;", "Lcom/superwall/sdk/models/internal/PurchaserInfo;", "Lcom/superwall/sdk/models/internal/StoreIdentifiers;", "Lcom/superwall/sdk/models/internal/ErrorInfo;", "Lcom/superwall/sdk/models/internal/ExpiredInfo;", "Lcom/superwall/sdk/models/internal/RedemptionOwnership;", "Lcom/superwall/sdk/models/internal/RedemptionResult$PaywallInfo;", "expo-superwall_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class RedemptionResultKt {
    public static final Map<String, Object> toJson(RedemptionResult redemptionResult) {
        Intrinsics.checkNotNullParameter(redemptionResult, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("code", redemptionResult.getCode());
        if (redemptionResult instanceof RedemptionResult.Success) {
            linkedHashMap.put("status", "SUCCESS");
            linkedHashMap.put("redemptionInfo", toJson(((RedemptionResult.Success) redemptionResult).getRedemptionInfo()));
            return linkedHashMap;
        }
        if (redemptionResult instanceof RedemptionResult.Error) {
            linkedHashMap.put("status", "ERROR");
            linkedHashMap.put(Constants.IPC_BUNDLE_KEY_SEND_ERROR, toJson(((RedemptionResult.Error) redemptionResult).getError()));
            return linkedHashMap;
        }
        if (redemptionResult instanceof RedemptionResult.Expired) {
            linkedHashMap.put("status", "CODE_EXPIRED");
            linkedHashMap.put("expired", toJson(((RedemptionResult.Expired) redemptionResult).getExpired()));
            return linkedHashMap;
        }
        if (redemptionResult instanceof RedemptionResult.InvalidCode) {
            linkedHashMap.put("status", "INVALID_CODE");
            return linkedHashMap;
        }
        if (!(redemptionResult instanceof RedemptionResult.ExpiredSubscription)) {
            throw new NoWhenBranchMatchedException();
        }
        linkedHashMap.put("status", "EXPIRED_SUBSCRIPTION");
        linkedHashMap.put("redemptionInfo", toJson(((RedemptionResult.ExpiredSubscription) redemptionResult).getRedemptionInfo()));
        return linkedHashMap;
    }

    private static final Map<String, Object> toJson(RedemptionInfo redemptionInfo) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("ownership", toJson(redemptionInfo.getOwnership()));
        linkedHashMap.put("purchaserInfo", toJson(redemptionInfo.getPurchaserInfo()));
        RedemptionResult.PaywallInfo paywallInfo = redemptionInfo.getPaywallInfo();
        if (paywallInfo != null) {
            linkedHashMap.put("paywallInfo", toJson(paywallInfo));
        }
        ArrayList arrayList = new ArrayList();
        for (Entitlement entitlement : redemptionInfo.getEntitlements()) {
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            linkedHashMap2.put("id", entitlement.getId());
            arrayList.add(linkedHashMap2);
        }
        linkedHashMap.put("entitlements", arrayList);
        return linkedHashMap;
    }

    private static final Map<String, Object> toJson(PurchaserInfo purchaserInfo) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(Keys.APP_USER_ID, purchaserInfo.getAppUserId());
        String email = purchaserInfo.getEmail();
        if (email != null) {
            linkedHashMap.put("email", email);
        }
        linkedHashMap.put("storeIdentifiers", toJson(purchaserInfo.getStoreIdentifiers()));
        return linkedHashMap;
    }

    private static final Map<String, Object> toJson(StoreIdentifiers storeIdentifiers) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (storeIdentifiers instanceof StoreIdentifiers.Stripe) {
            linkedHashMap.put("store", "STRIPE");
            StoreIdentifiers.Stripe stripe = (StoreIdentifiers.Stripe) storeIdentifiers;
            linkedHashMap.put("stripeCustomerId", stripe.getStripeCustomerId());
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = stripe.getSubscriptionIds().iterator();
            while (it.hasNext()) {
                arrayList.add((String) it.next());
            }
            linkedHashMap.put("stripeSubscriptionIds", arrayList);
            return linkedHashMap;
        }
        if (storeIdentifiers instanceof StoreIdentifiers.Paddle) {
            linkedHashMap.put("store", "PADDLE");
            StoreIdentifiers.Paddle paddle = (StoreIdentifiers.Paddle) storeIdentifiers;
            linkedHashMap.put("paddleCustomerId", paddle.getPaddleCustomerId());
            ArrayList arrayList2 = new ArrayList();
            Iterator<T> it2 = paddle.getPaddleSubscriptionIds().iterator();
            while (it2.hasNext()) {
                arrayList2.add((String) it2.next());
            }
            linkedHashMap.put("paddleSubscriptionIds", arrayList2);
            return linkedHashMap;
        }
        if (!(storeIdentifiers instanceof StoreIdentifiers.Unknown)) {
            throw new NoWhenBranchMatchedException();
        }
        linkedHashMap.put("store", "UNKNOWN");
        return linkedHashMap;
    }

    private static final Map<String, Object> toJson(ErrorInfo errorInfo) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("message", errorInfo.getMessage());
        return linkedHashMap;
    }

    private static final Map<String, Object> toJson(ExpiredInfo expiredInfo) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("resent", Boolean.valueOf(expiredInfo.getResent()));
        String obfuscatedEmail = expiredInfo.getObfuscatedEmail();
        if (obfuscatedEmail != null) {
            linkedHashMap.put("obfuscatedEmail", obfuscatedEmail);
        }
        return linkedHashMap;
    }

    private static final Map<String, Object> toJson(RedemptionOwnership redemptionOwnership) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (redemptionOwnership instanceof RedemptionOwnership.Device) {
            linkedHashMap.put("type", "DEVICE");
            linkedHashMap.put("deviceId", ((RedemptionOwnership.Device) redemptionOwnership).getDeviceId());
            return linkedHashMap;
        }
        if (!(redemptionOwnership instanceof RedemptionOwnership.AppUser)) {
            throw new NoWhenBranchMatchedException();
        }
        linkedHashMap.put("type", "APP_USER");
        linkedHashMap.put(Keys.APP_USER_ID, ((RedemptionOwnership.AppUser) redemptionOwnership).getAppUserId());
        return linkedHashMap;
    }

    private static final Map<String, Object> toJson(RedemptionResult.PaywallInfo paywallInfo) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(NotificationsService.IDENTIFIER_KEY, paywallInfo.getIdentifier());
        linkedHashMap.put("placementName", paywallInfo.getPlacementName());
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry<String, JsonElement> entry : paywallInfo.getPlacementParams().entrySet()) {
            linkedHashMap2.put(entry.getKey(), entry.getValue().toString());
        }
        linkedHashMap.put("placementParams", linkedHashMap2);
        String variantId = paywallInfo.getVariantId();
        if (variantId != null) {
            linkedHashMap.put("variantId", variantId);
        }
        String experimentId = paywallInfo.getExperimentId();
        if (experimentId != null) {
            linkedHashMap.put("experimentId", experimentId);
        }
        String productIdentifier = paywallInfo.getProductIdentifier();
        if (productIdentifier != null) {
            linkedHashMap.put("productIdentifier", productIdentifier);
        }
        return linkedHashMap;
    }
}
