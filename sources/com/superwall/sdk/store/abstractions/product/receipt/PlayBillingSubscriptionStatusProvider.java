package com.superwall.sdk.store.abstractions.product.receipt;

import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.Purchase;
import com.superwall.sdk.billing.Billing;
import com.superwall.sdk.store.abstractions.product.RawStoreProduct;
import com.superwall.sdk.store.abstractions.product.StoreProduct;
import com.superwall.sdk.store.abstractions.product.SubscriptionPeriod;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SubscriptionStatusProvider.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J \u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0096@¢\u0006\u0002\u0010\fJ\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00020\tH\u0016J\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J \u0010\u0011\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0096@¢\u0006\u0002\u0010\fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/superwall/sdk/store/abstractions/product/receipt/PlayBillingSubscriptionStatusProvider;", "Lcom/superwall/sdk/store/abstractions/product/receipt/SubscriptionStatusProvider;", "billing", "Lcom/superwall/sdk/billing/Billing;", "<init>", "(Lcom/superwall/sdk/billing/Billing;)V", "getSubscriptionState", "Lcom/superwall/sdk/store/abstractions/product/receipt/LatestSubscriptionState;", "purchase", "Lcom/android/billingclient/api/Purchase;", "product", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "(Lcom/android/billingclient/api/Purchase;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getWillAutoRenew", "", "getOfferType", "Lcom/superwall/sdk/store/abstractions/product/receipt/LatestPeriodType;", "isActive", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PlayBillingSubscriptionStatusProvider implements SubscriptionStatusProvider {
    private final Billing billing;

    public PlayBillingSubscriptionStatusProvider(Billing billing) {
        Intrinsics.checkNotNullParameter(billing, "billing");
        this.billing = billing;
    }

    @Override // com.superwall.sdk.store.abstractions.product.receipt.SubscriptionStatusProvider
    public Object getSubscriptionState(Purchase purchase, StoreProduct storeProduct, Continuation<? super LatestSubscriptionState> continuation) {
        RawStoreProduct rawStoreProduct;
        SubscriptionPeriod subscriptionPeriod;
        long jCurrentTimeMillis = System.currentTimeMillis() - purchase.getPurchaseTime();
        long toMillis = (storeProduct == null || (rawStoreProduct = storeProduct.getRawStoreProduct()) == null || (subscriptionPeriod = rawStoreProduct.getSubscriptionPeriod()) == null) ? 0L : subscriptionPeriod.getToMillis();
        if (purchase.getPurchaseState() == 0) {
            return LatestSubscriptionState.REVOKED;
        }
        if (purchase.getPurchaseState() == 2 && purchase.isAutoRenewing()) {
            return LatestSubscriptionState.GRACE_PERIOD;
        }
        if (purchase.getPurchaseState() == 1 && toMillis > 0 && jCurrentTimeMillis > toMillis) {
            return LatestSubscriptionState.EXPIRED;
        }
        if (purchase.getPurchaseState() == 1 && purchase.isAutoRenewing() && (toMillis == 0 || jCurrentTimeMillis < toMillis)) {
            return LatestSubscriptionState.SUBSCRIBED;
        }
        if (purchase.getPurchaseState() == 1) {
            return LatestSubscriptionState.EXPIRED;
        }
        return LatestSubscriptionState.UNKNOWN;
    }

    @Override // com.superwall.sdk.store.abstractions.product.receipt.SubscriptionStatusProvider
    public boolean getWillAutoRenew(Purchase purchase) {
        Intrinsics.checkNotNullParameter(purchase, "purchase");
        return purchase.isAutoRenewing();
    }

    @Override // com.superwall.sdk.store.abstractions.product.receipt.SubscriptionStatusProvider
    public LatestPeriodType getOfferType(Purchase purchase, StoreProduct product) {
        ArrayList arrayListEmptyList;
        Intrinsics.checkNotNullParameter(purchase, "purchase");
        if (product == null) {
            return null;
        }
        RawStoreProduct rawStoreProduct = product.getRawStoreProduct();
        RawStoreProduct.SelectedOfferDetails selectedOffer = rawStoreProduct != null ? rawStoreProduct.getSelectedOffer() : null;
        if (selectedOffer instanceof RawStoreProduct.SelectedOfferDetails.Subscription) {
            List<ProductDetails.PricingPhase> pricingPhaseList = ((RawStoreProduct.SelectedOfferDetails.Subscription) selectedOffer).getUnderlying().getPricingPhases().getPricingPhaseList();
            Intrinsics.checkNotNullExpressionValue(pricingPhaseList, "getPricingPhaseList(...)");
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            for (Object obj : pricingPhaseList) {
                if (z) {
                    arrayList.add(obj);
                } else if (((ProductDetails.PricingPhase) obj).getPriceAmountMicros() != 0) {
                    arrayList.add(obj);
                    z = true;
                }
            }
            arrayListEmptyList = arrayList;
        } else {
            if (!(selectedOffer instanceof RawStoreProduct.SelectedOfferDetails.OneTime) && selectedOffer != null) {
                throw new NoWhenBranchMatchedException();
            }
            arrayListEmptyList = CollectionsKt.emptyList();
        }
        Date trialPeriodEndDate = product.getTrialPeriodEndDate();
        if ((trialPeriodEndDate != null ? trialPeriodEndDate.getTime() : 0L) > System.currentTimeMillis()) {
            return LatestPeriodType.TRIAL;
        }
        if (arrayListEmptyList.size() > 1) {
            ProductDetails.PricingPhase pricingPhase = (ProductDetails.PricingPhase) CollectionsKt.firstOrNull(arrayListEmptyList);
            long priceAmountMicros = pricingPhase != null ? pricingPhase.getPriceAmountMicros() : 0L;
            ProductDetails.PricingPhase pricingPhase2 = (ProductDetails.PricingPhase) CollectionsKt.lastOrNull(arrayListEmptyList);
            if (priceAmountMicros < (pricingPhase2 != null ? pricingPhase2.getPriceAmountMicros() : 0L)) {
                return LatestPeriodType.PROMOTIONAL;
            }
        }
        if (purchase.getPurchaseState() == 0) {
            return LatestPeriodType.REVOKED;
        }
        return LatestPeriodType.SUBSCRIPTION;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0042  */
    @Override // com.superwall.sdk.store.abstractions.product.receipt.SubscriptionStatusProvider
    public Object isActive(Purchase purchase, StoreProduct storeProduct, Continuation<? super Boolean> continuation) {
        ProductDetails underlyingProductDetails;
        long jCurrentTimeMillis = System.currentTimeMillis();
        int purchaseState = purchase.getPurchaseState();
        boolean z = false;
        if (purchaseState != 0 && purchaseState == 1) {
            if (storeProduct == null) {
                return Boxing.boxBoolean(false);
            }
            RawStoreProduct rawStoreProduct = storeProduct.getRawStoreProduct();
            String productType = (rawStoreProduct == null || (underlyingProductDetails = rawStoreProduct.getUnderlyingProductDetails()) == null) ? null : underlyingProductDetails.getProductType();
            if (productType != null) {
                int iHashCode = productType.hashCode();
                if (iHashCode != 3541555) {
                    if (iHashCode == 100343516 && productType.equals("inapp")) {
                        z = true;
                    }
                } else if (productType.equals("subs")) {
                    RawStoreProduct rawStoreProduct2 = storeProduct.getRawStoreProduct();
                    SubscriptionPeriod subscriptionPeriod = rawStoreProduct2 != null ? rawStoreProduct2.getSubscriptionPeriod() : null;
                    if (subscriptionPeriod == null) {
                        z = true;
                    } else if (purchase.getPurchaseTime() + subscriptionPeriod.getToMillis() > jCurrentTimeMillis) {
                        z = true;
                    }
                }
            }
        }
        return Boxing.boxBoolean(z);
    }
}
