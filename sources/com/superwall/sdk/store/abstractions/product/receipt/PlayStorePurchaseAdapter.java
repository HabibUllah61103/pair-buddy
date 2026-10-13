package com.superwall.sdk.store.abstractions.product.receipt;

import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.Purchase;
import com.superwall.sdk.store.abstractions.product.RawStoreProduct;
import com.superwall.sdk.store.abstractions.product.StoreProduct;
import com.superwall.sdk.store.abstractions.product.SubscriptionPeriod;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PlayStorePurchaseAdapter.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u0000 &2\u00020\u0001:\u0001&B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\n\u0010$\u001a\u0004\u0018\u00010\u000fH\u0002J\b\u0010%\u001a\u00020\u0017H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000bR\u0014\u0010\u000e\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0011R\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00178VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u001a8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u0014\u0010\u001d\u001a\u00020\u00178VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u0018R\u0016\u0010\u001f\u001a\u0004\u0018\u00010\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b \u0010\u0011R\u0014\u0010!\u001a\u00020\u00178VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\u0018R\u0014\u0010\"\u001a\u00020\u00178VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010\u0018R\u0014\u0010#\u001a\u00020\u00178VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b#\u0010\u0018¨\u0006'"}, d2 = {"Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter;", "Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransaction;", "purchase", "Lcom/android/billingclient/api/Purchase;", "product", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "productId", "", "<init>", "(Lcom/android/billingclient/api/Purchase;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Ljava/lang/String;)V", "getProductId", "()Ljava/lang/String;", "transactionId", "getTransactionId", "purchaseDate", "Ljava/util/Date;", "getPurchaseDate", "()Ljava/util/Date;", "originalPurchaseDate", "getOriginalPurchaseDate", "expirationDate", "getExpirationDate", "isRevoked", "", "()Z", "productType", "Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;", "getProductType", "()Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;", "willRenew", "getWillRenew", "renewedAt", "getRenewedAt", "isInGracePeriod", "isInBillingRetryPeriod", "isActive", "calculateExpirationDate", "calculateIsActive", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PlayStorePurchaseAdapter implements EntitlementTransaction {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final StoreProduct product;
    private final String productId;
    private final Purchase purchase;

    @Override // com.superwall.sdk.store.abstractions.product.receipt.EntitlementTransaction
    public Date getRenewedAt() {
        return null;
    }

    @Override // com.superwall.sdk.store.abstractions.product.receipt.EntitlementTransaction
    public boolean isInBillingRetryPeriod() {
        return false;
    }

    public PlayStorePurchaseAdapter(Purchase purchase, StoreProduct storeProduct, String productId) {
        Intrinsics.checkNotNullParameter(purchase, "purchase");
        Intrinsics.checkNotNullParameter(productId, "productId");
        this.purchase = purchase;
        this.product = storeProduct;
        this.productId = productId;
    }

    @Override // com.superwall.sdk.store.abstractions.product.receipt.EntitlementTransaction
    public String getProductId() {
        return this.productId;
    }

    @Override // com.superwall.sdk.store.abstractions.product.receipt.EntitlementTransaction
    public String getTransactionId() {
        String orderId = this.purchase.getOrderId();
        if (orderId != null) {
            return orderId;
        }
        String purchaseToken = this.purchase.getPurchaseToken();
        Intrinsics.checkNotNullExpressionValue(purchaseToken, "getPurchaseToken(...)");
        return purchaseToken;
    }

    @Override // com.superwall.sdk.store.abstractions.product.receipt.EntitlementTransaction
    public Date getPurchaseDate() {
        return new Date(this.purchase.getPurchaseTime());
    }

    @Override // com.superwall.sdk.store.abstractions.product.receipt.EntitlementTransaction
    public Date getOriginalPurchaseDate() {
        return new Date(this.purchase.getPurchaseTime());
    }

    @Override // com.superwall.sdk.store.abstractions.product.receipt.EntitlementTransaction
    public Date getExpirationDate() {
        return calculateExpirationDate();
    }

    @Override // com.superwall.sdk.store.abstractions.product.receipt.EntitlementTransaction
    public boolean isRevoked() {
        return this.purchase.getPurchaseState() == 2 || this.purchase.getPurchaseState() == 0;
    }

    @Override // com.superwall.sdk.store.abstractions.product.receipt.EntitlementTransaction
    public EntitlementTransactionType getProductType() {
        RawStoreProduct rawStoreProduct;
        ProductDetails underlyingProductDetails;
        StoreProduct storeProduct = this.product;
        String productType = (storeProduct == null || (rawStoreProduct = storeProduct.getRawStoreProduct()) == null || (underlyingProductDetails = rawStoreProduct.getUnderlyingProductDetails()) == null) ? null : underlyingProductDetails.getProductType();
        if (productType != null) {
            int iHashCode = productType.hashCode();
            if (iHashCode != 3541555) {
                if (iHashCode == 100343516 && productType.equals("inapp")) {
                    return EntitlementTransactionType.NON_CONSUMABLE;
                }
            } else if (productType.equals("subs")) {
                if (this.purchase.isAutoRenewing()) {
                    return EntitlementTransactionType.AUTO_RENEWABLE;
                }
                return EntitlementTransactionType.NON_RENEWABLE;
            }
        }
        return EntitlementTransactionType.CONSUMABLE;
    }

    @Override // com.superwall.sdk.store.abstractions.product.receipt.EntitlementTransaction
    public boolean getWillRenew() {
        return this.purchase.isAutoRenewing();
    }

    @Override // com.superwall.sdk.store.abstractions.product.receipt.EntitlementTransaction
    public boolean isInGracePeriod() {
        return this.purchase.getPurchaseState() == 2 && this.purchase.isAutoRenewing();
    }

    @Override // com.superwall.sdk.store.abstractions.product.receipt.EntitlementTransaction
    public boolean isActive() {
        return calculateIsActive();
    }

    private final Date calculateExpirationDate() {
        ProductDetails underlyingProductDetails;
        StoreProduct storeProduct = this.product;
        if (storeProduct == null) {
            return null;
        }
        RawStoreProduct rawStoreProduct = storeProduct.getRawStoreProduct();
        String productType = (rawStoreProduct == null || (underlyingProductDetails = rawStoreProduct.getUnderlyingProductDetails()) == null) ? null : underlyingProductDetails.getProductType();
        if (productType != null) {
            int iHashCode = productType.hashCode();
            if (iHashCode != 3541555) {
                if (iHashCode == 100343516) {
                    productType.equals("inapp");
                }
            } else if (productType.equals("subs")) {
                RawStoreProduct rawStoreProduct2 = this.product.getRawStoreProduct();
                SubscriptionPeriod subscriptionPeriod = rawStoreProduct2 != null ? rawStoreProduct2.getSubscriptionPeriod() : null;
                if (subscriptionPeriod != null) {
                    return new Date(this.purchase.getPurchaseTime() + subscriptionPeriod.getToMillis());
                }
            }
        }
        return null;
    }

    private final boolean calculateIsActive() {
        int purchaseState = this.purchase.getPurchaseState();
        return purchaseState != 0 && purchaseState == 1;
    }

    /* JADX INFO: compiled from: PlayStorePurchaseAdapter.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J(\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¨\u0006\r"}, d2 = {"Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter$Companion;", "", "<init>", "()V", "fromPurchase", "", "Lcom/superwall/sdk/store/abstractions/product/receipt/PlayStorePurchaseAdapter;", "purchase", "Lcom/android/billingclient/api/Purchase;", "productsById", "", "", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<PlayStorePurchaseAdapter> fromPurchase(Purchase purchase, Map<String, StoreProduct> productsById) {
            String fullIdentifier;
            Intrinsics.checkNotNullParameter(purchase, "purchase");
            Intrinsics.checkNotNullParameter(productsById, "productsById");
            List<String> products = purchase.getProducts();
            Intrinsics.checkNotNullExpressionValue(products, "getProducts(...)");
            List<String> list = products;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            for (String str : list) {
                StoreProduct storeProduct = productsById.get(str);
                if (storeProduct != null && (fullIdentifier = storeProduct.getFullIdentifier()) != null) {
                    str = fullIdentifier;
                }
                Intrinsics.checkNotNull(str);
                arrayList.add(new PlayStorePurchaseAdapter(purchase, storeProduct, str));
            }
            return arrayList;
        }
    }
}
