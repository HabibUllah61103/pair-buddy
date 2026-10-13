package com.superwall.sdk.billing.observer;

import android.app.Activity;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingResult;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.store.PurchasingObserverState;
import com.superwall.sdk.store.abstractions.product.RawStoreProduct;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LaunchBillingFlowWithSuperwall.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"launchBillingFlowWithSuperwall", "Lcom/android/billingclient/api/BillingResult;", "Lcom/android/billingclient/api/BillingClient;", "activity", "Landroid/app/Activity;", "params", "Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams;", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class LaunchBillingFlowWithSuperwallKt {
    public static final BillingResult launchBillingFlowWithSuperwall(BillingClient billingClient, Activity activity, SuperwallBillingFlowParams params) {
        Intrinsics.checkNotNullParameter(billingClient, "<this>");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(params, "params");
        if (!Superwall.INSTANCE.getInitialized()) {
            throw new IllegalStateException("Superwall SDK is not initialized");
        }
        if (!Superwall.INSTANCE.getInstance().getOptions().getShouldObservePurchases()) {
            Logger logger = Logger.INSTANCE;
            LogLevel logLevel = LogLevel.error;
            LogScope logScope = LogScope.superwallCore;
            Pair[] pairArr = new Pair[2];
            pairArr[0] = TuplesKt.to("method", "launchBillingFlowWithSuperwall");
            List<SuperwallBillingFlowParams.ProductDetailsParams> productDetailsParams$superwall_release = params.getProductDetailsParams$superwall_release();
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(productDetailsParams$superwall_release, 10));
            Iterator<T> it = productDetailsParams$superwall_release.iterator();
            while (it.hasNext()) {
                arrayList.add(((SuperwallBillingFlowParams.ProductDetailsParams) it.next()).getDetails().getProductId());
            }
            pairArr[1] = TuplesKt.to("products", CollectionsKt.joinToString$default(arrayList, ", ", null, null, 0, null, null, 62, null));
            Logger.debug$default(logger, logLevel, logScope, "Observer mode is not enabled. In order to observe purchases, please enable it in the SuperwallOptions by setting `shouldObservePurchases` to true.", MapsKt.mapOf(pairArr), null, 16, null);
            BillingResult billingResultLaunchBillingFlow = billingClient.launchBillingFlow(activity, params.toOriginal());
            Intrinsics.checkNotNullExpressionValue(billingResultLaunchBillingFlow, "launchBillingFlow(...)");
            return billingResultLaunchBillingFlow;
        }
        Iterator<T> it2 = params.getProductDetailsParams$superwall_release().iterator();
        while (it2.hasNext()) {
            Superwall.INSTANCE.getInstance().observe(new PurchasingObserverState.PurchaseWillBegin(RawStoreProduct.INSTANCE.from(((SuperwallBillingFlowParams.ProductDetailsParams) it2.next()).getDetails()).getUnderlyingProductDetails()));
        }
        BillingResult billingResultLaunchBillingFlow2 = billingClient.launchBillingFlow(activity, params.toOriginal());
        Intrinsics.checkNotNullExpressionValue(billingResultLaunchBillingFlow2, "launchBillingFlow(...)");
        return billingResultLaunchBillingFlow2;
    }
}
