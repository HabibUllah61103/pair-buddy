package expo.modules.superwallexpo.json;

import com.superwall.sdk.store.abstractions.transactions.StoreTransaction;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StoreTransaction.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001*\u00020\u0004¨\u0006\u0005"}, d2 = {"toJson", "", "", "", "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;", "expo-superwall_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class StoreTransactionKt {
    public static final Map<String, Object> toJson(StoreTransaction storeTransaction) {
        Intrinsics.checkNotNullParameter(storeTransaction, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ISO_INSTANT;
        linkedHashMap.put("configRequestId", storeTransaction.getConfigRequestId());
        linkedHashMap.put("appSessionId", storeTransaction.getAppSessionId());
        Date transactionDate = storeTransaction.getTransactionDate();
        linkedHashMap.put("transactionDate", transactionDate != null ? toJson$toIsoString(transactionDate, dateTimeFormatter) : null);
        linkedHashMap.put("originalTransactionIdentifier", storeTransaction.getOriginalTransactionIdentifier());
        linkedHashMap.put("storeTransactionId", storeTransaction.getStoreTransactionId());
        Date originalTransactionDate = storeTransaction.getOriginalTransactionDate();
        linkedHashMap.put("originalTransactionDate", originalTransactionDate != null ? toJson$toIsoString(originalTransactionDate, dateTimeFormatter) : null);
        linkedHashMap.put("webOrderLineItemID", storeTransaction.getWebOrderLineItemID());
        linkedHashMap.put("appBundleId", storeTransaction.getAppBundleId());
        linkedHashMap.put("subscriptionGroupId", storeTransaction.getSubscriptionGroupId());
        Boolean boolIsUpgraded = storeTransaction.isUpgraded();
        linkedHashMap.put("isUpgraded", Boolean.valueOf(boolIsUpgraded != null ? boolIsUpgraded.booleanValue() : false));
        Date expirationDate = storeTransaction.getExpirationDate();
        linkedHashMap.put("expirationDate", expirationDate != null ? toJson$toIsoString(expirationDate, dateTimeFormatter) : null);
        linkedHashMap.put("offerId", storeTransaction.getOfferId());
        Date revocationDate = storeTransaction.getRevocationDate();
        linkedHashMap.put("revocationDate", revocationDate != null ? toJson$toIsoString(revocationDate, dateTimeFormatter) : null);
        linkedHashMap.put("appAccountToken", storeTransaction.getAppAccountToken());
        linkedHashMap.put("purchaseToken", storeTransaction.getPurchaseToken());
        linkedHashMap.put("signature", storeTransaction.getSignature());
        return linkedHashMap;
    }

    private static final String toJson$toIsoString(Date date, DateTimeFormatter dateTimeFormatter) {
        return date.toInstant().atZone(ZoneId.systemDefault()).format(dateTimeFormatter);
    }
}
