package com.superwall.sdk.billing;

import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.Purchase;
import com.superwall.sdk.delegate.InternalPurchaseResult;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GoogleBillingWrapper.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a$\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004*\u0016\u0012\u0004\u0012\u00020\u0007\u0012\f\u0012\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00040\u0006\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"RECONNECT_TIMER_START_MILLISECONDS", "", "RECONNECT_TIMER_MAX_TIME_MILLISECONDS", "toInternalResult", "", "Lcom/superwall/sdk/delegate/InternalPurchaseResult;", "Lkotlin/Pair;", "Lcom/android/billingclient/api/BillingResult;", "Lcom/android/billingclient/api/Purchase;", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class GoogleBillingWrapperKt {
    public static final long RECONNECT_TIMER_MAX_TIME_MILLISECONDS = 16000;
    public static final long RECONNECT_TIMER_START_MILLISECONDS = 1000;

    public static final List<InternalPurchaseResult> toInternalResult(Pair<BillingResult, ? extends List<? extends Purchase>> pair) {
        Intrinsics.checkNotNullParameter(pair, "<this>");
        BillingResult billingResultComponent1 = pair.component1();
        List<? extends Purchase> listComponent2 = pair.component2();
        if (billingResultComponent1.getResponseCode() == 0 && listComponent2 != null) {
            List<? extends Purchase> list = listComponent2;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new InternalPurchaseResult.Purchased((Purchase) it.next()));
            }
            return arrayList;
        }
        if (billingResultComponent1.getResponseCode() == 1) {
            return CollectionsKt.listOf(InternalPurchaseResult.Cancelled.INSTANCE);
        }
        return CollectionsKt.listOf(new InternalPurchaseResult.Failed(new Exception(String.valueOf(billingResultComponent1.getResponseCode()))));
    }
}
