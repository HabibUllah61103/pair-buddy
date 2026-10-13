package com.superwall.sdk.delegate.subscription_controller;

import com.android.billingclient.api.ProductDetails;
import com.superwall.sdk.delegate.PurchaseResult;
import com.superwall.sdk.delegate.RestorationResult;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: PurchaseControllerJava.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\bf\u0018\u00002\u00020\u0001J8\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00030\nH&J$\u0010\f\u001a\u00020\u00032\u001a\u0010\t\u001a\u0016\u0012\u0004\u0012\u00020\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0004\u0012\u00020\u00030\rH&¨\u0006\u0010"}, d2 = {"Lcom/superwall/sdk/delegate/subscription_controller/PurchaseControllerJava;", "", "purchase", "", "productDetails", "Lcom/android/billingclient/api/ProductDetails;", "basePlanId", "", "offerId", "completion", "Lkotlin/Function1;", "Lcom/superwall/sdk/delegate/PurchaseResult;", "restorePurchases", "Lkotlin/Function2;", "Lcom/superwall/sdk/delegate/RestorationResult;", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface PurchaseControllerJava {
    void purchase(ProductDetails productDetails, String basePlanId, String offerId, Function1<? super PurchaseResult, Unit> completion);

    void restorePurchases(Function2<? super RestorationResult, ? super Throwable, Unit> completion);
}
