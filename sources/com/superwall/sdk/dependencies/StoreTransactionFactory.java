package com.superwall.sdk.dependencies;

import com.android.billingclient.api.Purchase;
import com.superwall.sdk.store.abstractions.transactions.StoreTransaction;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: FactoryProtocols.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H¦@¢\u0006\u0002\u0010\u0006J\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH¦@¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/superwall/sdk/dependencies/StoreTransactionFactory;", "", "makeStoreTransaction", "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;", "transaction", "Lcom/android/billingclient/api/Purchase;", "(Lcom/android/billingclient/api/Purchase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "activeProductIds", "", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface StoreTransactionFactory {
    Object activeProductIds(Continuation<? super List<String>> continuation);

    Object makeStoreTransaction(Purchase purchase, Continuation<? super StoreTransaction> continuation);
}
