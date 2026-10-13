package com.superwall.sdk.store.abstractions.product.receipt;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: StoredEntitlementTransaction.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 '2\u00020\u0001:\u0002&'B\u001d\u0012\u0014\b\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0004\b\u0006\u0010\u0007B1\b\u0010\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0014\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0006\u0010\fJ\u0014\u0010\u0011\u001a\u00020\u00002\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013J\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00050\u0013J\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00050\u0013J\u0015\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0003J\u001f\u0010\u0018\u001a\u00020\u00002\u0014\b\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\tHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0004HÖ\u0001J%\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00002\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0001¢\u0006\u0002\b%R(\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006("}, d2 = {"Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;", "", "transactions", "", "", "Lcom/superwall/sdk/store/abstractions/product/receipt/StoredEntitlementTransaction;", "<init>", "(Ljava/util/Map;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/util/Map;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getTransactions$annotations", "()V", "getTransactions", "()Ljava/util/Map;", "mergeWith", "currentTransactions", "", "Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;", "allTransactions", "activeTransactions", "component1", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class UserTransactionHistory {
    private final Map<String, StoredEntitlementTransaction> transactions;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new LinkedHashMapSerializer(StringSerializer.INSTANCE, StoredEntitlementTransaction$$serializer.INSTANCE)};

    /* JADX WARN: Multi-variable type inference failed */
    public UserTransactionHistory() {
        this((Map) null, 1, (DefaultConstructorMarker) (0 == true ? 1 : 0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ UserTransactionHistory copy$default(UserTransactionHistory userTransactionHistory, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            map = userTransactionHistory.transactions;
        }
        return userTransactionHistory.copy(map);
    }

    @SerialName("transactions")
    public static /* synthetic */ void getTransactions$annotations() {
    }

    public final Map<String, StoredEntitlementTransaction> component1() {
        return this.transactions;
    }

    public final UserTransactionHistory copy(Map<String, StoredEntitlementTransaction> transactions) {
        Intrinsics.checkNotNullParameter(transactions, "transactions");
        return new UserTransactionHistory(transactions);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof UserTransactionHistory) && Intrinsics.areEqual(this.transactions, ((UserTransactionHistory) other).transactions);
    }

    public int hashCode() {
        return this.transactions.hashCode();
    }

    public String toString() {
        return "UserTransactionHistory(transactions=" + this.transactions + ")";
    }

    /* JADX INFO: compiled from: StoredEntitlementTransaction.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/store/abstractions/product/receipt/UserTransactionHistory;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<UserTransactionHistory> serializer() {
            return UserTransactionHistory$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ UserTransactionHistory(int i, Map map, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) == 0) {
            this.transactions = MapsKt.emptyMap();
        } else {
            this.transactions = map;
        }
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(UserTransactionHistory self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        if (!output.shouldEncodeElementDefault(serialDesc, 0) && Intrinsics.areEqual(self.transactions, MapsKt.emptyMap())) {
            return;
        }
        output.encodeSerializableElement(serialDesc, 0, kSerializerArr[0], self.transactions);
    }

    public UserTransactionHistory(Map<String, StoredEntitlementTransaction> transactions) {
        Intrinsics.checkNotNullParameter(transactions, "transactions");
        this.transactions = transactions;
    }

    public final Map<String, StoredEntitlementTransaction> getTransactions() {
        return this.transactions;
    }

    public /* synthetic */ UserTransactionHistory(Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? MapsKt.emptyMap() : map);
    }

    public final UserTransactionHistory mergeWith(List<? extends EntitlementTransaction> currentTransactions) {
        Intrinsics.checkNotNullParameter(currentTransactions, "currentTransactions");
        List<? extends EntitlementTransaction> list = currentTransactions;
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(list, 10)), 16));
        for (Object obj : list) {
            linkedHashMap.put(((EntitlementTransaction) obj).getTransactionId(), obj);
        }
        Map mutableMap = MapsKt.toMutableMap(this.transactions);
        for (Map.Entry<String, StoredEntitlementTransaction> entry : this.transactions.entrySet()) {
            String key = entry.getKey();
            StoredEntitlementTransaction value = entry.getValue();
            EntitlementTransaction entitlementTransaction = (EntitlementTransaction) linkedHashMap.get(key);
            if (entitlementTransaction != null) {
                mutableMap.put(key, StoredEntitlementTransaction.INSTANCE.from(entitlementTransaction));
            } else {
                mutableMap.put(key, StoredEntitlementTransaction.INSTANCE.withUpdatedActiveStatus(value, false));
            }
        }
        for (EntitlementTransaction entitlementTransaction2 : list) {
            if (!mutableMap.containsKey(entitlementTransaction2.getTransactionId())) {
                mutableMap.put(entitlementTransaction2.getTransactionId(), StoredEntitlementTransaction.INSTANCE.from(entitlementTransaction2));
            }
        }
        return new UserTransactionHistory(mutableMap);
    }

    public final List<StoredEntitlementTransaction> allTransactions() {
        return CollectionsKt.sortedWith(this.transactions.values(), new Comparator() { // from class: com.superwall.sdk.store.abstractions.product.receipt.UserTransactionHistory$allTransactions$$inlined$sortedByDescending$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(((StoredEntitlementTransaction) t2).getPurchaseDate(), ((StoredEntitlementTransaction) t).getPurchaseDate());
            }
        });
    }

    public final List<StoredEntitlementTransaction> activeTransactions() {
        Collection<StoredEntitlementTransaction> collectionValues = this.transactions.values();
        ArrayList arrayList = new ArrayList();
        for (Object obj : collectionValues) {
            if (((StoredEntitlementTransaction) obj).isActive()) {
                arrayList.add(obj);
            }
        }
        return CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.superwall.sdk.store.abstractions.product.receipt.UserTransactionHistory$activeTransactions$$inlined$sortedByDescending$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(((StoredEntitlementTransaction) t2).getPurchaseDate(), ((StoredEntitlementTransaction) t).getPurchaseDate());
            }
        });
    }
}
