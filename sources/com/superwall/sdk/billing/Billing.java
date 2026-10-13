package com.superwall.sdk.billing;

import com.android.billingclient.api.Purchase;
import com.superwall.sdk.delegate.InternalPurchaseResult;
import com.superwall.sdk.dependencies.StoreTransactionFactory;
import com.superwall.sdk.store.abstractions.product.StoreProduct;
import com.superwall.sdk.store.abstractions.transactions.StoreTransaction;
import expo.modules.notifications.service.NotificationsService;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: compiled from: Billing.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\"\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\bH¦@¢\u0006\u0002\u0010\fJ\u0018\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H¦@¢\u0006\u0002\u0010\u0011J\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H¦@¢\u0006\u0002\u0010\u0015J\u001e\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00172\u0006\u0010\u0018\u001a\u00020\u000bH¦@¢\u0006\u0004\b\u0019\u0010\u001aR\u001a\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u001b"}, d2 = {"Lcom/superwall/sdk/billing/Billing;", "", "purchaseResults", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/superwall/sdk/delegate/InternalPurchaseResult;", "getPurchaseResults", "()Lkotlinx/coroutines/flow/MutableStateFlow;", "awaitGetProducts", "", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", NotificationsService.IDENTIFIERS_KEY, "", "(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getLatestTransaction", "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransaction;", "factory", "Lcom/superwall/sdk/dependencies/StoreTransactionFactory;", "(Lcom/superwall/sdk/dependencies/StoreTransactionFactory;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "queryAllPurchases", "", "Lcom/android/billingclient/api/Purchase;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "consume", "Lkotlin/Result;", "purchaseToken", "consume-gIAlu-s", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface Billing {
    Object awaitGetProducts(Set<String> set, Continuation<? super Set<StoreProduct>> continuation);

    /* JADX INFO: renamed from: consume-gIAlu-s, reason: not valid java name */
    Object mo10575consumegIAlus(String str, Continuation<? super Result<String>> continuation);

    Object getLatestTransaction(StoreTransactionFactory storeTransactionFactory, Continuation<? super StoreTransaction> continuation);

    MutableStateFlow<InternalPurchaseResult> getPurchaseResults();

    Object queryAllPurchases(Continuation<? super List<? extends Purchase>> continuation);
}
