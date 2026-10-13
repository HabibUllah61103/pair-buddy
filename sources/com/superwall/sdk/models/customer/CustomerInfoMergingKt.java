package com.superwall.sdk.models.customer;

import com.superwall.sdk.models.entitlements.Entitlement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: CustomerInfoMerging.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0004\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001\u001a(\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007\u001a\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\n*\b\u0012\u0004\u0012\u00020\u00050\u0004\u001a'\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004*\b\u0012\u0004\u0012\u00020\u00050\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007H\u0086\u0002\u001a\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¨\u0006\u000e"}, d2 = {"merge", "Lcom/superwall/sdk/models/customer/CustomerInfo;", "other", "mergeEntitlements", "", "Lcom/superwall/sdk/models/entitlements/Entitlement;", "first", "", "second", "toSet", "", "plus", "mergeEntitlementsPrioritized", "entitlements", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class CustomerInfoMergingKt {
    public static final CustomerInfo merge(CustomerInfo customerInfo, CustomerInfo other) {
        String userId;
        Intrinsics.checkNotNullParameter(customerInfo, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        List listPlus = CollectionsKt.plus((Collection) customerInfo.getSubscriptions(), (Iterable) other.getSubscriptions());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : listPlus) {
            String transactionId = ((SubscriptionTransaction) obj).getTransactionId();
            Object obj2 = linkedHashMap.get(transactionId);
            if (obj2 == null) {
                obj2 = (List) new ArrayList();
                linkedHashMap.put(transactionId, obj2);
            }
            ((List) obj2).add(obj);
        }
        ArrayList arrayList = new ArrayList(linkedHashMap.size());
        Iterator it = linkedHashMap.entrySet().iterator();
        while (it.hasNext()) {
            List list = (List) ((Map.Entry) it.next()).getValue();
            SubscriptionTransaction subscriptionTransaction = (SubscriptionTransaction) CollectionsKt.maxWithOrNull(list, SubscriptionTransactionComparator.INSTANCE);
            if (subscriptionTransaction == null) {
                subscriptionTransaction = (SubscriptionTransaction) CollectionsKt.first(list);
            }
            arrayList.add(subscriptionTransaction);
        }
        List listSortedWith = CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.superwall.sdk.models.customer.CustomerInfoMergingKt$merge$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(((SubscriptionTransaction) t).getPurchaseDate(), ((SubscriptionTransaction) t2).getPurchaseDate());
            }
        });
        List listPlus2 = CollectionsKt.plus((Collection) customerInfo.getNonSubscriptions(), (Iterable) other.getNonSubscriptions());
        HashSet hashSet = new HashSet();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj3 : listPlus2) {
            if (hashSet.add(((NonSubscriptionTransaction) obj3).getTransactionId())) {
                arrayList2.add(obj3);
            }
        }
        List listSortedWith2 = CollectionsKt.sortedWith(arrayList2, new Comparator() { // from class: com.superwall.sdk.models.customer.CustomerInfoMergingKt$merge$$inlined$sortedBy$2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(((NonSubscriptionTransaction) t).getPurchaseDate(), ((NonSubscriptionTransaction) t2).getPurchaseDate());
            }
        });
        List<Entitlement> listMergeEntitlements = mergeEntitlements(customerInfo.getEntitlements(), other.getEntitlements());
        if (StringsKt.isBlank(customerInfo.getUserId())) {
            userId = !StringsKt.isBlank(other.getUserId()) ? other.getUserId() : "";
        } else {
            userId = customerInfo.getUserId();
        }
        return new CustomerInfo(listSortedWith, listSortedWith2, userId, listMergeEntitlements, listSortedWith.isEmpty() && listSortedWith2.isEmpty() && listMergeEntitlements.isEmpty());
    }

    public static final List<Entitlement> mergeEntitlements(Collection<Entitlement> first, Collection<Entitlement> second) {
        Intrinsics.checkNotNullParameter(first, "first");
        Intrinsics.checkNotNullParameter(second, "second");
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        listCreateListBuilder.addAll(first);
        listCreateListBuilder.addAll(second);
        return mergeEntitlementsPrioritized(CollectionsKt.build(listCreateListBuilder));
    }

    public static final Set<Entitlement> toSet(List<Entitlement> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Entitlement[] entitlementArr = (Entitlement[]) mergeEntitlementsPrioritized(list).toArray(new Entitlement[0]);
        return SetsKt.setOf(Arrays.copyOf(entitlementArr, entitlementArr.length));
    }

    public static final List<Entitlement> plus(Collection<Entitlement> collection, Collection<Entitlement> second) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(second, "second");
        return mergeEntitlements(collection, second);
    }

    public static final List<Entitlement> mergeEntitlementsPrioritized(List<Entitlement> entitlements) {
        Intrinsics.checkNotNullParameter(entitlements, "entitlements");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : entitlements) {
            String id = ((Entitlement) obj).getId();
            Object obj2 = linkedHashMap.get(id);
            if (obj2 == null) {
                obj2 = (List) new ArrayList();
                linkedHashMap.put(id, obj2);
            }
            ((List) obj2).add(obj);
        }
        ArrayList arrayList = new ArrayList(linkedHashMap.size());
        Iterator it = linkedHashMap.entrySet().iterator();
        while (it.hasNext()) {
            List list = (List) ((Map.Entry) it.next()).getValue();
            List list2 = list;
            Entitlement entitlement = (Entitlement) CollectionsKt.maxWithOrNull(list2, EntitlementPriorityComparator.INSTANCE);
            if (entitlement == null) {
                entitlement = (Entitlement) CollectionsKt.first(list);
            }
            Entitlement entitlementCopy$default = entitlement;
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                CollectionsKt.addAll(arrayList2, ((Entitlement) it2.next()).getProductIds());
            }
            Set set = CollectionsKt.toSet(arrayList2);
            if (!Intrinsics.areEqual(set, entitlementCopy$default.getProductIds())) {
                entitlementCopy$default = Entitlement.copy$default(entitlementCopy$default, null, null, false, set, null, null, null, null, null, null, null, null, null, 8183, null);
            }
            arrayList.add(entitlementCopy$default);
        }
        return arrayList;
    }
}
