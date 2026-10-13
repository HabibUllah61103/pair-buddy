package com.superwall.sdk.billing.observer;

import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.SkuDetails;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.annotation.AnnotationRetention;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SuperwallBillingFlowParams.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u0000 \u000e2\u00020\u0001:\u0005\u000e\u000f\u0010\u0011\u0012B!\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0006\u0010\r\u001a\u00020\u0003R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0013"}, d2 = {"Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams;", "", "params", "Lcom/android/billingclient/api/BillingFlowParams;", "productDetailsParams", "", "Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams;", "<init>", "(Lcom/android/billingclient/api/BillingFlowParams;Ljava/util/List;)V", "getParams$superwall_release", "()Lcom/android/billingclient/api/BillingFlowParams;", "getProductDetailsParams$superwall_release", "()Ljava/util/List;", "toOriginal", "Companion", "Builder", "ProductDetailsParams", "SubscriptionUpdateParams", "ProrationMode", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SuperwallBillingFlowParams {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final BillingFlowParams params;
    private final List<ProductDetailsParams> productDetailsParams;

    public /* synthetic */ SuperwallBillingFlowParams(BillingFlowParams billingFlowParams, List list, DefaultConstructorMarker defaultConstructorMarker) {
        this(billingFlowParams, list);
    }

    private SuperwallBillingFlowParams(BillingFlowParams billingFlowParams, List<ProductDetailsParams> list) {
        this.params = billingFlowParams;
        this.productDetailsParams = list;
    }

    /* JADX INFO: renamed from: getParams$superwall_release, reason: from getter */
    public final BillingFlowParams getParams() {
        return this.params;
    }

    /* synthetic */ SuperwallBillingFlowParams(BillingFlowParams billingFlowParams, ArrayList arrayList, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(billingFlowParams, (i & 2) != 0 ? new ArrayList() : arrayList);
    }

    public final List<ProductDetailsParams> getProductDetailsParams$superwall_release() {
        return this.productDetailsParams;
    }

    /* JADX INFO: compiled from: SuperwallBillingFlowParams.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005¨\u0006\u0006"}, d2 = {"Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Companion;", "", "<init>", "()V", "newBuilder", "Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Builder;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Builder newBuilder() {
            return new Builder();
        }
    }

    public final BillingFlowParams toOriginal() {
        return this.params;
    }

    /* JADX INFO: compiled from: SuperwallBillingFlowParams.kt */
    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0010J\u0014\u0010\u0013\u001a\u00020\u00002\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\b0\u0015J\u0010\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0018H\u0007J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u001bJ\u0006\u0010\u001c\u001a\u00020\u001dR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u001e"}, d2 = {"Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$Builder;", "", "<init>", "()V", "builder", "Lcom/android/billingclient/api/BillingFlowParams$Builder;", "productDetailsParams", "", "Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams;", "getProductDetailsParams$superwall_release", "()Ljava/util/List;", "setIsOfferPersonalized", "isOfferPersonalized", "", "setObfuscatedAccountId", "obfuscatedAccountId", "", "setObfuscatedProfileId", "obfuscatedProfileId", "setProductDetailsParamsList", "productDetailsParamsList", "", "setSkuDetails", "skuDetails", "Lcom/android/billingclient/api/SkuDetails;", "setSubscriptionUpdateParams", "params", "Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$SubscriptionUpdateParams;", "build", "Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Builder {
        private final BillingFlowParams.Builder builder;
        private final List<ProductDetailsParams> productDetailsParams;

        public Builder() {
            BillingFlowParams.Builder builderNewBuilder = BillingFlowParams.newBuilder();
            Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
            this.builder = builderNewBuilder;
            this.productDetailsParams = new ArrayList();
        }

        public final List<ProductDetailsParams> getProductDetailsParams$superwall_release() {
            return this.productDetailsParams;
        }

        public final Builder setIsOfferPersonalized(boolean isOfferPersonalized) {
            this.builder.setIsOfferPersonalized(isOfferPersonalized);
            return this;
        }

        public final Builder setObfuscatedAccountId(String obfuscatedAccountId) {
            Intrinsics.checkNotNullParameter(obfuscatedAccountId, "obfuscatedAccountId");
            this.builder.setObfuscatedAccountId(obfuscatedAccountId);
            return this;
        }

        public final Builder setObfuscatedProfileId(String obfuscatedProfileId) {
            Intrinsics.checkNotNullParameter(obfuscatedProfileId, "obfuscatedProfileId");
            this.builder.setObfuscatedProfileId(obfuscatedProfileId);
            return this;
        }

        public final Builder setProductDetailsParamsList(List<ProductDetailsParams> productDetailsParamsList) {
            Intrinsics.checkNotNullParameter(productDetailsParamsList, "productDetailsParamsList");
            this.productDetailsParams.addAll(productDetailsParamsList);
            BillingFlowParams.Builder builder = this.builder;
            List<ProductDetailsParams> list = productDetailsParamsList;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((ProductDetailsParams) it.next()).getParams());
            }
            builder.setProductDetailsParamsList(arrayList);
            return this;
        }

        @Deprecated(message = "Use setProductDetailsParamsList instead")
        public final Builder setSkuDetails(SkuDetails skuDetails) {
            Intrinsics.checkNotNullParameter(skuDetails, "skuDetails");
            this.builder.setSkuDetails(skuDetails);
            return this;
        }

        public final Builder setSubscriptionUpdateParams(SubscriptionUpdateParams params) {
            Intrinsics.checkNotNullParameter(params, "params");
            this.builder.setSubscriptionUpdateParams(params.getParams());
            return this;
        }

        public final SuperwallBillingFlowParams build() {
            BillingFlowParams billingFlowParamsBuild = this.builder.build();
            Intrinsics.checkNotNullExpressionValue(billingFlowParamsBuild, "build(...)");
            return new SuperwallBillingFlowParams(billingFlowParamsBuild, this.productDetailsParams, null);
        }
    }

    /* JADX INFO: compiled from: SuperwallBillingFlowParams.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\u000b\fB\u0019\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\n\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams;", "", "params", "Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;", "details", "Lcom/android/billingclient/api/ProductDetails;", "<init>", "(Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;Lcom/android/billingclient/api/ProductDetails;)V", "getDetails$superwall_release", "()Lcom/android/billingclient/api/ProductDetails;", "toOriginal", "Companion", "ProductDetailsParamsBuilder", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ProductDetailsParams {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final ProductDetails details;
        private final BillingFlowParams.ProductDetailsParams params;

        public /* synthetic */ ProductDetailsParams(BillingFlowParams.ProductDetailsParams productDetailsParams, ProductDetails productDetails, DefaultConstructorMarker defaultConstructorMarker) {
            this(productDetailsParams, productDetails);
        }

        private ProductDetailsParams(BillingFlowParams.ProductDetailsParams productDetailsParams, ProductDetails productDetails) {
            this.params = productDetailsParams;
            this.details = productDetails;
        }

        /* JADX INFO: renamed from: getDetails$superwall_release, reason: from getter */
        public final ProductDetails getDetails() {
            return this.details;
        }

        /* JADX INFO: renamed from: toOriginal, reason: from getter */
        public final BillingFlowParams.ProductDetailsParams getParams() {
            return this.params;
        }

        /* JADX INFO: compiled from: SuperwallBillingFlowParams.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005¨\u0006\u0006"}, d2 = {"Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams$Companion;", "", "<init>", "()V", "newBuilder", "Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams$ProductDetailsParamsBuilder;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final ProductDetailsParamsBuilder newBuilder() {
                return new ProductDetailsParamsBuilder();
            }
        }

        /* JADX INFO: compiled from: SuperwallBillingFlowParams.kt */
        @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0007J\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0013"}, d2 = {"Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams$ProductDetailsParamsBuilder;", "", "<init>", "()V", "builder", "Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;", "details", "Lcom/android/billingclient/api/ProductDetails;", "getDetails$superwall_release", "()Lcom/android/billingclient/api/ProductDetails;", "setDetails$superwall_release", "(Lcom/android/billingclient/api/ProductDetails;)V", "setOfferToken", "offerToken", "", "setProductDetails", "productDetails", "build", "Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProductDetailsParams;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class ProductDetailsParamsBuilder {
            private final BillingFlowParams.ProductDetailsParams.Builder builder;
            private ProductDetails details;

            public ProductDetailsParamsBuilder() {
                BillingFlowParams.ProductDetailsParams.Builder builderNewBuilder = BillingFlowParams.ProductDetailsParams.newBuilder();
                Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
                this.builder = builderNewBuilder;
            }

            /* JADX INFO: renamed from: getDetails$superwall_release, reason: from getter */
            public final ProductDetails getDetails() {
                return this.details;
            }

            public final void setDetails$superwall_release(ProductDetails productDetails) {
                this.details = productDetails;
            }

            public final ProductDetailsParamsBuilder setOfferToken(String offerToken) {
                Intrinsics.checkNotNullParameter(offerToken, "offerToken");
                this.builder.setOfferToken(offerToken);
                return this;
            }

            public final ProductDetailsParamsBuilder setProductDetails(ProductDetails productDetails) {
                Intrinsics.checkNotNullParameter(productDetails, "productDetails");
                this.details = productDetails;
                this.builder.setProductDetails(productDetails);
                return this;
            }

            public final ProductDetailsParams build() {
                ProductDetails productDetails = this.details;
                if (productDetails == null) {
                    throw new IllegalArgumentException("ProductDetails are required");
                }
                BillingFlowParams.ProductDetailsParams productDetailsParamsBuild = this.builder.build();
                Intrinsics.checkNotNullExpressionValue(productDetailsParamsBuild, "build(...)");
                return new ProductDetailsParams(productDetailsParamsBuild, productDetails, null);
            }
        }
    }

    /* JADX INFO: compiled from: SuperwallBillingFlowParams.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u00072\u00020\u0001:\u0003\u0007\b\tB\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\u0006\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$SubscriptionUpdateParams;", "", "params", "Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;", "<init>", "(Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;)V", "toOriginal", "Companion", "SubscriptionUpdateParamsBuilder", "ReplacementMode", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class SubscriptionUpdateParams {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final BillingFlowParams.SubscriptionUpdateParams params;

        public /* synthetic */ SubscriptionUpdateParams(BillingFlowParams.SubscriptionUpdateParams subscriptionUpdateParams, DefaultConstructorMarker defaultConstructorMarker) {
            this(subscriptionUpdateParams);
        }

        private SubscriptionUpdateParams(BillingFlowParams.SubscriptionUpdateParams subscriptionUpdateParams) {
            this.params = subscriptionUpdateParams;
        }

        /* JADX INFO: renamed from: toOriginal, reason: from getter */
        public final BillingFlowParams.SubscriptionUpdateParams getParams() {
            return this.params;
        }

        /* JADX INFO: compiled from: SuperwallBillingFlowParams.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005¨\u0006\u0006"}, d2 = {"Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$SubscriptionUpdateParams$Companion;", "", "<init>", "()V", "newBuilder", "Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$SubscriptionUpdateParams$SubscriptionUpdateParamsBuilder;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final SubscriptionUpdateParamsBuilder newBuilder() {
                return new SubscriptionUpdateParamsBuilder();
            }
        }

        /* JADX INFO: compiled from: SuperwallBillingFlowParams.kt */
        @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\bJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$SubscriptionUpdateParams$SubscriptionUpdateParamsBuilder;", "", "<init>", "()V", "builder", "Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;", "setOldPurchaseToken", "purchaseToken", "", "setOriginalExternalTransactionId", "externalTransactionId", "setSubscriptionReplacementMode", "subscriptionReplacementMode", "", "build", "Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$SubscriptionUpdateParams;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class SubscriptionUpdateParamsBuilder {
            private final BillingFlowParams.SubscriptionUpdateParams.Builder builder;

            public SubscriptionUpdateParamsBuilder() {
                BillingFlowParams.SubscriptionUpdateParams.Builder builderNewBuilder = BillingFlowParams.SubscriptionUpdateParams.newBuilder();
                Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
                this.builder = builderNewBuilder;
            }

            public final SubscriptionUpdateParamsBuilder setOldPurchaseToken(String purchaseToken) {
                Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
                this.builder.setOldPurchaseToken(purchaseToken);
                return this;
            }

            public final SubscriptionUpdateParamsBuilder setOriginalExternalTransactionId(String externalTransactionId) {
                Intrinsics.checkNotNullParameter(externalTransactionId, "externalTransactionId");
                this.builder.setOriginalExternalTransactionId(externalTransactionId);
                return this;
            }

            public final SubscriptionUpdateParamsBuilder setSubscriptionReplacementMode(int subscriptionReplacementMode) {
                this.builder.setSubscriptionReplacementMode(subscriptionReplacementMode);
                return this;
            }

            public final SubscriptionUpdateParams build() {
                BillingFlowParams.SubscriptionUpdateParams subscriptionUpdateParamsBuild = this.builder.build();
                Intrinsics.checkNotNullExpressionValue(subscriptionUpdateParamsBuild, "build(...)");
                return new SubscriptionUpdateParams(subscriptionUpdateParamsBuild, null);
            }
        }

        /* JADX INFO: compiled from: SuperwallBillingFlowParams.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\b\u0002\b\u0087\u0002\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002B\u0000¨\u0006\u0003"}, d2 = {"Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$SubscriptionUpdateParams$ReplacementMode;", "", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        @Retention(RetentionPolicy.SOURCE)
        @kotlin.annotation.Retention(AnnotationRetention.SOURCE)
        public @interface ReplacementMode {
            public static final int CHARGE_FULL_PRICE = 5;
            public static final int CHARGE_PRORATED_PRICE = 2;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = Companion.$$INSTANCE;
            public static final int DEFERRED = 6;
            public static final int UNKNOWN_REPLACEMENT_MODE = 0;
            public static final int WITHOUT_PRORATION = 3;
            public static final int WITH_TIME_PRORATION = 1;

            /* JADX INFO: compiled from: SuperwallBillingFlowParams.kt */
            @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$SubscriptionUpdateParams$ReplacementMode$Companion;", "", "<init>", "()V", "UNKNOWN_REPLACEMENT_MODE", "", "WITH_TIME_PRORATION", "CHARGE_PRORATED_PRICE", "WITHOUT_PRORATION", "CHARGE_FULL_PRICE", "DEFERRED", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
            public static final class Companion {
                static final /* synthetic */ Companion $$INSTANCE = new Companion();
                public static final int CHARGE_FULL_PRICE = 5;
                public static final int CHARGE_PRORATED_PRICE = 2;
                public static final int DEFERRED = 6;
                public static final int UNKNOWN_REPLACEMENT_MODE = 0;
                public static final int WITHOUT_PRORATION = 3;
                public static final int WITH_TIME_PRORATION = 1;

                private Companion() {
                }
            }
        }
    }

    /* JADX INFO: compiled from: SuperwallBillingFlowParams.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\b\u0002\b\u0087\u0002\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002B\u0000¨\u0006\u0003"}, d2 = {"Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProrationMode;", "", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Deprecated(message = "Use SubscriptionUpdateParams.ReplacementMode instead")
    @Retention(RetentionPolicy.SOURCE)
    @kotlin.annotation.Retention(AnnotationRetention.SOURCE)
    public @interface ProrationMode {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = Companion.$$INSTANCE;
        public static final int DEFERRED = 4;
        public static final int IMMEDIATE_AND_CHARGE_FULL_PRICE = 5;
        public static final int IMMEDIATE_AND_CHARGE_PRORATED_PRICE = 2;
        public static final int IMMEDIATE_WITHOUT_PRORATION = 3;
        public static final int IMMEDIATE_WITH_TIME_PRORATION = 1;
        public static final int UNKNOWN_SUBSCRIPTION_UPGRADE_DOWNGRADE_POLICY = 0;

        /* JADX INFO: compiled from: SuperwallBillingFlowParams.kt */
        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/superwall/sdk/billing/observer/SuperwallBillingFlowParams$ProrationMode$Companion;", "", "<init>", "()V", "UNKNOWN_SUBSCRIPTION_UPGRADE_DOWNGRADE_POLICY", "", "IMMEDIATE_WITH_TIME_PRORATION", "IMMEDIATE_AND_CHARGE_PRORATED_PRICE", "IMMEDIATE_WITHOUT_PRORATION", "DEFERRED", "IMMEDIATE_AND_CHARGE_FULL_PRICE", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();
            public static final int DEFERRED = 4;
            public static final int IMMEDIATE_AND_CHARGE_FULL_PRICE = 5;
            public static final int IMMEDIATE_AND_CHARGE_PRORATED_PRICE = 2;
            public static final int IMMEDIATE_WITHOUT_PRORATION = 3;
            public static final int IMMEDIATE_WITH_TIME_PRORATION = 1;
            public static final int UNKNOWN_SUBSCRIPTION_UPGRADE_DOWNGRADE_POLICY = 0;

            private Companion() {
            }
        }
    }
}
