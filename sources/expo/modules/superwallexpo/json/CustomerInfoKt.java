package expo.modules.superwallexpo.json;

import com.android.billingclient.api.BillingClient;
import com.superwall.sdk.models.customer.CustomerInfo;
import com.superwall.sdk.models.customer.NonSubscriptionTransaction;
import com.superwall.sdk.models.customer.SubscriptionTransaction;
import com.superwall.sdk.models.entitlements.Entitlement;
import com.superwall.sdk.store.abstractions.product.receipt.LatestPeriodType;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CustomerInfo.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0002\u001a\f\u0010\u0005\u001a\u00020\u0001*\u00020\u0006H\u0002\u001a\u0018\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0006\u0012\u0004\u0018\u00010\t0\b*\u00020\n\u001a\u0018\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0006\u0012\u0004\u0018\u00010\t0\b*\u00020\u000b\u001a\u0018\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0006\u0012\u0004\u0018\u00010\t0\b*\u00020\f\"\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"toJsonString", "", "Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;", "dateFormatter", "Ljava/time/format/DateTimeFormatter;", "toIsoString", "Ljava/util/Date;", "toJson", "", "", "Lcom/superwall/sdk/models/customer/CustomerInfo;", "Lcom/superwall/sdk/models/customer/SubscriptionTransaction;", "Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;", "expo-superwall_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class CustomerInfoKt {
    private static final DateTimeFormatter dateFormatter;

    /* JADX INFO: compiled from: CustomerInfo.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LatestPeriodType.values().length];
            try {
                iArr[LatestPeriodType.TRIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LatestPeriodType.CODE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LatestPeriodType.SUBSCRIPTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LatestPeriodType.PROMOTIONAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[LatestPeriodType.WINBACK.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[LatestPeriodType.REVOKED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private static final String toJsonString(LatestPeriodType latestPeriodType) {
        switch (WhenMappings.$EnumSwitchMapping$0[latestPeriodType.ordinal()]) {
            case 1:
                return "trial";
            case 2:
                return "code";
            case 3:
                return "subscription";
            case 4:
                return "promotional";
            case 5:
                return "winback";
            case 6:
                return "revoked";
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    static {
        DateTimeFormatter ISO_INSTANT = DateTimeFormatter.ISO_INSTANT;
        Intrinsics.checkNotNullExpressionValue(ISO_INSTANT, "ISO_INSTANT");
        dateFormatter = ISO_INSTANT;
    }

    private static final String toIsoString(Date date) {
        String str = date.toInstant().atZone(ZoneId.systemDefault()).format(dateFormatter);
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }

    public static final Map<String, Object> toJson(CustomerInfo customerInfo) {
        Intrinsics.checkNotNullParameter(customerInfo, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("userId", customerInfo.getUserId());
        List<SubscriptionTransaction> subscriptions = customerInfo.getSubscriptions();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(subscriptions, 10));
        Iterator<T> it = subscriptions.iterator();
        while (it.hasNext()) {
            arrayList.add(toJson((SubscriptionTransaction) it.next()));
        }
        linkedHashMap.put(BillingClient.FeatureType.SUBSCRIPTIONS, arrayList);
        List<NonSubscriptionTransaction> nonSubscriptions = customerInfo.getNonSubscriptions();
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(nonSubscriptions, 10));
        Iterator<T> it2 = nonSubscriptions.iterator();
        while (it2.hasNext()) {
            arrayList2.add(toJson((NonSubscriptionTransaction) it2.next()));
        }
        linkedHashMap.put("nonSubscriptions", arrayList2);
        List<Entitlement> entitlements = customerInfo.getEntitlements();
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(entitlements, 10));
        Iterator<T> it3 = entitlements.iterator();
        while (it3.hasNext()) {
            arrayList3.add(EntitlementsKt.toJson((Entitlement) it3.next()));
        }
        linkedHashMap.put("entitlements", arrayList3);
        return linkedHashMap;
    }

    public static final Map<String, Object> toJson(SubscriptionTransaction subscriptionTransaction) {
        Intrinsics.checkNotNullParameter(subscriptionTransaction, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("transactionId", subscriptionTransaction.getTransactionId());
        linkedHashMap.put("productId", subscriptionTransaction.getProductId());
        linkedHashMap.put("purchaseDate", toIsoString(subscriptionTransaction.getPurchaseDate()));
        linkedHashMap.put("willRenew", Boolean.valueOf(subscriptionTransaction.getWillRenew()));
        linkedHashMap.put("isRevoked", Boolean.valueOf(subscriptionTransaction.isRevoked()));
        linkedHashMap.put("isInGracePeriod", Boolean.valueOf(subscriptionTransaction.isInGracePeriod()));
        linkedHashMap.put("isInBillingRetryPeriod", Boolean.valueOf(subscriptionTransaction.isInBillingRetryPeriod()));
        linkedHashMap.put("isActive", Boolean.valueOf(subscriptionTransaction.isActive()));
        Date expirationDate = subscriptionTransaction.getExpirationDate();
        linkedHashMap.put("expirationDate", expirationDate != null ? toIsoString(expirationDate) : null);
        linkedHashMap.put("store", subscriptionTransaction.getStore().name());
        LatestPeriodType offerType = subscriptionTransaction.getOfferType();
        if (offerType != null) {
            linkedHashMap.put("offerType", toJsonString(offerType));
        }
        String subscriptionGroupId = subscriptionTransaction.getSubscriptionGroupId();
        if (subscriptionGroupId != null) {
            linkedHashMap.put("subscriptionGroupId", subscriptionGroupId);
        }
        return linkedHashMap;
    }

    public static final Map<String, Object> toJson(NonSubscriptionTransaction nonSubscriptionTransaction) {
        Intrinsics.checkNotNullParameter(nonSubscriptionTransaction, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("transactionId", nonSubscriptionTransaction.getTransactionId());
        linkedHashMap.put("productId", nonSubscriptionTransaction.getProductId());
        linkedHashMap.put("purchaseDate", toIsoString(nonSubscriptionTransaction.getPurchaseDate()));
        linkedHashMap.put("isConsumable", Boolean.valueOf(nonSubscriptionTransaction.isConsumable()));
        linkedHashMap.put("isRevoked", Boolean.valueOf(nonSubscriptionTransaction.isRevoked()));
        linkedHashMap.put("store", nonSubscriptionTransaction.getStore().name());
        return linkedHashMap;
    }
}
