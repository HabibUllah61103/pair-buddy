package com.superwall.sdk.delegate.subscription_controller;

import android.app.Activity;
import com.android.billingclient.api.ProductDetails;
import com.superwall.sdk.delegate.PurchaseResult;
import com.superwall.sdk.delegate.RestorationResult;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: PurchaseController.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J2\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\tH§@¢\u0006\u0002\u0010\u000bJ\u000e\u0010\f\u001a\u00020\rH§@¢\u0006\u0002\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;", "", "purchase", "Lcom/superwall/sdk/delegate/PurchaseResult;", "activity", "Landroid/app/Activity;", "productDetails", "Lcom/android/billingclient/api/ProductDetails;", "basePlanId", "", "offerId", "(Landroid/app/Activity;Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "restorePurchases", "Lcom/superwall/sdk/delegate/RestorationResult;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface PurchaseController {
    Object purchase(Activity activity, ProductDetails productDetails, String str, String str2, Continuation<? super PurchaseResult> continuation);

    Object restorePurchases(Continuation<? super RestorationResult> continuation);
}
