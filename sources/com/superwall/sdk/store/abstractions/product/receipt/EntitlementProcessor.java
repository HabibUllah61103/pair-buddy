package com.superwall.sdk.store.abstractions.product.receipt;

import androidx.media3.exoplayer.RendererCapabilities;
import com.android.billingclient.api.BillingClient;
import com.superwall.sdk.models.customer.NonSubscriptionTransaction;
import com.superwall.sdk.models.customer.SubscriptionTransaction;
import com.superwall.sdk.models.entitlements.Entitlement;
import com.superwall.sdk.models.product.Store;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EntitlementProcessor.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0015B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007Jf\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u00070\n2\u0018\u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\n2\u0018\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000f0\n2\u0018\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u000f0\nJ4\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u000b2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\u0013\u001a\u00020\f2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000b0\u000fH\u0002¨\u0006\u0016"}, d2 = {"Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor;", "", "<init>", "()V", "processTransactions", "Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor$ProcessedTransactions;", "transactions", "", "Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;", "buildEntitlementsFromTransactions", "", "", "Lcom/superwall/sdk/models/entitlements/Entitlement;", "transactionsByEntitlement", "rawEntitlementsByProductId", "", "productIdsByEntitlementId", "enrichEntitlement", "entitlementId", "rawEntitlement", "allProductIds", "ProcessedTransactions", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class EntitlementProcessor {

    /* JADX INFO: compiled from: EntitlementProcessor.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[EntitlementTransactionType.values().length];
            try {
                iArr[EntitlementTransactionType.NON_CONSUMABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EntitlementTransactionType.AUTO_RENEWABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[EntitlementTransactionType.NON_RENEWABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[EntitlementTransactionType.CONSUMABLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: compiled from: EntitlementProcessor.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003HÆ\u0003J)\u0010\u000e\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor$ProcessedTransactions;", "", "nonSubscriptions", "", "Lcom/superwall/sdk/models/customer/NonSubscriptionTransaction;", BillingClient.FeatureType.SUBSCRIPTIONS, "Lcom/superwall/sdk/models/customer/SubscriptionTransaction;", "<init>", "(Ljava/util/List;Ljava/util/List;)V", "getNonSubscriptions", "()Ljava/util/List;", "getSubscriptions", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class ProcessedTransactions {
        private final List<NonSubscriptionTransaction> nonSubscriptions;
        private final List<SubscriptionTransaction> subscriptions;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ ProcessedTransactions copy$default(ProcessedTransactions processedTransactions, List list, List list2, int i, Object obj) {
            if ((i & 1) != 0) {
                list = processedTransactions.nonSubscriptions;
            }
            if ((i & 2) != 0) {
                list2 = processedTransactions.subscriptions;
            }
            return processedTransactions.copy(list, list2);
        }

        public final List<NonSubscriptionTransaction> component1() {
            return this.nonSubscriptions;
        }

        public final List<SubscriptionTransaction> component2() {
            return this.subscriptions;
        }

        public final ProcessedTransactions copy(List<NonSubscriptionTransaction> nonSubscriptions, List<SubscriptionTransaction> subscriptions) {
            Intrinsics.checkNotNullParameter(nonSubscriptions, "nonSubscriptions");
            Intrinsics.checkNotNullParameter(subscriptions, "subscriptions");
            return new ProcessedTransactions(nonSubscriptions, subscriptions);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ProcessedTransactions)) {
                return false;
            }
            ProcessedTransactions processedTransactions = (ProcessedTransactions) other;
            return Intrinsics.areEqual(this.nonSubscriptions, processedTransactions.nonSubscriptions) && Intrinsics.areEqual(this.subscriptions, processedTransactions.subscriptions);
        }

        public int hashCode() {
            return (this.nonSubscriptions.hashCode() * 31) + this.subscriptions.hashCode();
        }

        public String toString() {
            return "ProcessedTransactions(nonSubscriptions=" + this.nonSubscriptions + ", subscriptions=" + this.subscriptions + ")";
        }

        public ProcessedTransactions(List<NonSubscriptionTransaction> nonSubscriptions, List<SubscriptionTransaction> subscriptions) {
            Intrinsics.checkNotNullParameter(nonSubscriptions, "nonSubscriptions");
            Intrinsics.checkNotNullParameter(subscriptions, "subscriptions");
            this.nonSubscriptions = nonSubscriptions;
            this.subscriptions = subscriptions;
        }

        public final List<NonSubscriptionTransaction> getNonSubscriptions() {
            return this.nonSubscriptions;
        }

        public final List<SubscriptionTransaction> getSubscriptions() {
            return this.subscriptions;
        }
    }

    public final ProcessedTransactions processTransactions(List<? extends EntitlementTransaction> transactions) {
        Intrinsics.checkNotNullParameter(transactions, "transactions");
        List<? extends EntitlementTransaction> list = transactions;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            EntitlementTransaction entitlementTransaction = (EntitlementTransaction) obj;
            if (entitlementTransaction.getProductType() == EntitlementTransactionType.CONSUMABLE || entitlementTransaction.getProductType() == EntitlementTransactionType.NON_CONSUMABLE) {
                arrayList.add(obj);
            }
        }
        ArrayList<EntitlementTransaction> arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
        for (EntitlementTransaction entitlementTransaction2 : arrayList2) {
            arrayList3.add(new NonSubscriptionTransaction(entitlementTransaction2.getTransactionId(), entitlementTransaction2.getProductId(), entitlementTransaction2.getPurchaseDate(), entitlementTransaction2.getProductType() == EntitlementTransactionType.CONSUMABLE, entitlementTransaction2.isRevoked(), (Store) null, 32, (DefaultConstructorMarker) null));
        }
        ArrayList arrayList4 = arrayList3;
        ArrayList arrayList5 = new ArrayList();
        for (Object obj2 : list) {
            EntitlementTransaction entitlementTransaction3 = (EntitlementTransaction) obj2;
            if (entitlementTransaction3.getProductType() == EntitlementTransactionType.AUTO_RENEWABLE || entitlementTransaction3.getProductType() == EntitlementTransactionType.NON_RENEWABLE) {
                arrayList5.add(obj2);
            }
        }
        ArrayList<EntitlementTransaction> arrayList6 = arrayList5;
        ArrayList arrayList7 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList6, 10));
        for (EntitlementTransaction entitlementTransaction4 : arrayList6) {
            arrayList7.add(new SubscriptionTransaction(entitlementTransaction4.getTransactionId(), entitlementTransaction4.getProductId(), entitlementTransaction4.getPurchaseDate(), entitlementTransaction4.getWillRenew(), entitlementTransaction4.isRevoked(), entitlementTransaction4.isInGracePeriod(), entitlementTransaction4.isInBillingRetryPeriod(), entitlementTransaction4.isActive(), entitlementTransaction4.getExpirationDate(), (Store) null, (LatestPeriodType) null, (String) null, RendererCapabilities.AUDIO_OFFLOAD_SUPPORT_MASK, (DefaultConstructorMarker) null));
        }
        return new ProcessedTransactions(arrayList4, arrayList7);
    }

    public final Map<String, List<Entitlement>> buildEntitlementsFromTransactions(Map<String, ? extends List<? extends EntitlementTransaction>> transactionsByEntitlement, Map<String, ? extends Set<Entitlement>> rawEntitlementsByProductId, Map<String, ? extends Set<String>> productIdsByEntitlementId) {
        Object next;
        Pair pair;
        Intrinsics.checkNotNullParameter(transactionsByEntitlement, "transactionsByEntitlement");
        Intrinsics.checkNotNullParameter(rawEntitlementsByProductId, "rawEntitlementsByProductId");
        Intrinsics.checkNotNullParameter(productIdsByEntitlementId, "productIdsByEntitlementId");
        if (rawEntitlementsByProductId.isEmpty()) {
            return MapsKt.emptyMap();
        }
        ArrayList arrayList = new ArrayList(transactionsByEntitlement.size());
        for (Map.Entry<String, ? extends List<? extends EntitlementTransaction>> entry : transactionsByEntitlement.entrySet()) {
            String key = entry.getKey();
            List<? extends EntitlementTransaction> value = entry.getValue();
            Iterator it = CollectionsKt.flatten(rawEntitlementsByProductId.values()).iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.areEqual(((Entitlement) next).getId(), key));
            Entitlement entitlement = (Entitlement) next;
            if (entitlement == null) {
                pair = null;
            } else {
                Set<String> setEmptySet = productIdsByEntitlementId.get(key);
                if (setEmptySet == null) {
                    setEmptySet = SetsKt.emptySet();
                }
                pair = TuplesKt.to(key, enrichEntitlement(key, value, entitlement, setEmptySet));
            }
            arrayList.add(pair);
        }
        Map map = MapsKt.toMap(CollectionsKt.filterNotNull(arrayList));
        ArrayList arrayList2 = new ArrayList(rawEntitlementsByProductId.size());
        for (Map.Entry<String, ? extends Set<Entitlement>> entry2 : rawEntitlementsByProductId.entrySet()) {
            String key2 = entry2.getKey();
            Set<Entitlement> value2 = entry2.getValue();
            ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(value2, 10));
            for (Entitlement entitlement2 : value2) {
                Entitlement entitlementCopy$default = (Entitlement) map.get(entitlement2.getId());
                if (entitlementCopy$default == null) {
                    Set<String> setEmptySet2 = productIdsByEntitlementId.get(entitlement2.getId());
                    if (setEmptySet2 == null) {
                        setEmptySet2 = SetsKt.emptySet();
                    }
                    entitlementCopy$default = Entitlement.copy$default(entitlement2, null, null, false, setEmptySet2, null, null, null, null, null, null, null, null, null, 8179, null);
                }
                arrayList3.add(entitlementCopy$default);
            }
            arrayList2.add(TuplesKt.to(key2, arrayList3));
        }
        return MapsKt.toMap(arrayList2);
    }

    /* JADX WARN: Code duplicated, block: B:55:0x00f7  */
    private final Entitlement enrichEntitlement(String entitlementId, List<? extends EntitlementTransaction> transactions, Entitlement rawEntitlement, Set<String> allProductIds) {
        Object next;
        Object next2;
        boolean z;
        String productId;
        LatestSubscriptionState latestSubscriptionState;
        LatestSubscriptionState latestSubscriptionState2;
        Date expirationDate;
        Set<String> set = allProductIds;
        if (set.isEmpty()) {
            List<? extends EntitlementTransaction> list = transactions;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((EntitlementTransaction) it.next()).getProductId());
            }
            set = CollectionsKt.toSet(arrayList);
        }
        Set<String> set2 = set;
        List<? extends EntitlementTransaction> list2 = transactions;
        Iterator<T> it2 = list2.iterator();
        if (it2.hasNext()) {
            next = it2.next();
            if (it2.hasNext()) {
                Date originalPurchaseDate = ((EntitlementTransaction) next).getOriginalPurchaseDate();
                do {
                    Object next3 = it2.next();
                    Date originalPurchaseDate2 = ((EntitlementTransaction) next3).getOriginalPurchaseDate();
                    if (originalPurchaseDate.compareTo(originalPurchaseDate2) > 0) {
                        next = next3;
                        originalPurchaseDate = originalPurchaseDate2;
                    }
                } while (it2.hasNext());
            }
        } else {
            next = null;
        }
        EntitlementTransaction entitlementTransaction = (EntitlementTransaction) next;
        Date originalPurchaseDate3 = entitlementTransaction != null ? entitlementTransaction.getOriginalPurchaseDate() : null;
        Iterator<T> it3 = list2.iterator();
        while (true) {
            if (!it3.hasNext()) {
                next2 = null;
                break;
            }
            next2 = it3.next();
            EntitlementTransaction entitlementTransaction2 = (EntitlementTransaction) next2;
            if (entitlementTransaction2.getProductType() == EntitlementTransactionType.NON_CONSUMABLE && !entitlementTransaction2.isRevoked()) {
                break;
            }
        }
        EntitlementTransaction entitlementTransaction3 = (EntitlementTransaction) next2;
        boolean willRenew = false;
        if (entitlementTransaction3 != null) {
            productId = entitlementTransaction3.getProductId();
            z = true;
        } else {
            z = false;
            productId = null;
        }
        boolean z2 = z;
        EntitlementTransaction entitlementTransaction4 = null;
        Date date = null;
        Date date2 = null;
        for (EntitlementTransaction entitlementTransaction5 : transactions) {
            if (!entitlementTransaction5.isRevoked()) {
                int i = WhenMappings.$EnumSwitchMapping$0[entitlementTransaction5.getProductType().ordinal()];
                if (i == 1) {
                    z = true;
                } else if (i == 2 || i == 3) {
                    if (entitlementTransaction5.isActive()) {
                        z = true;
                    }
                } else if (i != 4) {
                    throw new NoWhenBranchMatchedException();
                }
                if (!z2 && CollectionsKt.listOf((Object[]) new EntitlementTransactionType[]{EntitlementTransactionType.AUTO_RENEWABLE, EntitlementTransactionType.NON_RENEWABLE}).contains(entitlementTransaction5.getProductType()) && (entitlementTransaction4 == null || entitlementTransaction4.getPurchaseDate().before(entitlementTransaction5.getPurchaseDate()))) {
                    entitlementTransaction4 = entitlementTransaction5;
                }
                if (!entitlementTransaction5.isRevoked() && CollectionsKt.listOf((Object[]) new EntitlementTransactionType[]{EntitlementTransactionType.AUTO_RENEWABLE, EntitlementTransactionType.NON_RENEWABLE}).contains(entitlementTransaction5.getProductType())) {
                    Date renewedAt = entitlementTransaction5.getRenewedAt();
                    if (renewedAt == null) {
                        renewedAt = !Intrinsics.areEqual(entitlementTransaction5.getPurchaseDate(), entitlementTransaction5.getOriginalPurchaseDate()) ? entitlementTransaction5.getPurchaseDate() : null;
                    }
                    if (renewedAt != null && (date2 == null || date2.before(renewedAt))) {
                        date2 = renewedAt;
                    }
                }
                if (!z2 && CollectionsKt.listOf((Object[]) new EntitlementTransactionType[]{EntitlementTransactionType.AUTO_RENEWABLE, EntitlementTransactionType.NON_RENEWABLE}).contains(entitlementTransaction5.getProductType()) && (expirationDate = entitlementTransaction5.getExpirationDate()) != null && (date == null || expirationDate.after(date))) {
                    date = expirationDate;
                }
            }
        }
        if (productId == null) {
            productId = entitlementTransaction4 != null ? entitlementTransaction4.getProductId() : null;
        }
        if (!z2 && entitlementTransaction4 != null) {
            willRenew = entitlementTransaction4.getWillRenew();
        }
        if (z2 || entitlementTransaction4 == null) {
            latestSubscriptionState = null;
        } else {
            if (entitlementTransaction4.isRevoked()) {
                latestSubscriptionState2 = LatestSubscriptionState.REVOKED;
            } else if (entitlementTransaction4.isInGracePeriod()) {
                latestSubscriptionState2 = LatestSubscriptionState.GRACE_PERIOD;
            } else if (entitlementTransaction4.isInBillingRetryPeriod()) {
                latestSubscriptionState2 = LatestSubscriptionState.BILLING_RETRY;
            } else {
                latestSubscriptionState2 = !z ? LatestSubscriptionState.EXPIRED : LatestSubscriptionState.SUBSCRIBED;
            }
            latestSubscriptionState = latestSubscriptionState2;
        }
        String str = productId;
        Entitlement.Type type = rawEntitlement.getType();
        Date date3 = z2 ? null : date;
        Boolean boolValueOf = Boolean.valueOf(z2);
        Boolean boolValueOf2 = Boolean.valueOf(willRenew);
        Store store = rawEntitlement.getStore();
        if (store == null) {
            store = Store.PLAY_STORE;
        }
        return new Entitlement(entitlementId, type, z, set2, str, originalPurchaseDate3, date2, date3, boolValueOf, boolValueOf2, latestSubscriptionState, null, store);
    }
}
