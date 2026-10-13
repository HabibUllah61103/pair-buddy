package com.superwall.sdk.billing;

import androidx.core.app.NotificationCompat;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.ProductDetailsResponseListener;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.android.billingclient.api.QueryProductDetailsResult;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.store.abstractions.product.RawStoreProduct;
import com.superwall.sdk.store.abstractions.product.StoreProduct;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: QueryProductDetailsUseCase.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B¬\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0018\u0010\u0005\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0004\u0012\u00020\t0\u0006\u0012\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\t0\u0006\u0012#\u0010\f\u001a\u001f\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\t0\u0006¢\u0006\u0002\b\u000e\u0012\u0004\u0012\u00020\t0\u0006\u0012H\u0010\u000f\u001aD\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0014\u0012!\u0012\u001f\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0004\u0012\u00020\t0\u0006¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\t0\u0010j\u0002`\u0015¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\b\u0010\u001f\u001a\u00020\tH\u0016J\u0010\u0010 \u001a\u00020\t2\u0006\u0010!\u001a\u00020\u0002H\u0016J \u0010\"\u001a\u00020\t2\u0006\u0010#\u001a\u00020\r2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R#\u0010\u0005\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0004\u0012\u00020\t0\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u001d\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\t0\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0019R.\u0010\f\u001a\u001f\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\t0\u0006¢\u0006\u0002\b\u000e\u0012\u0004\u0012\u00020\t0\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0019¨\u0006("}, d2 = {"Lcom/superwall/sdk/billing/QueryProductDetailsUseCase;", "Lcom/superwall/sdk/billing/BillingClientUseCase;", "Lcom/android/billingclient/api/QueryProductDetailsResult;", "useCaseParams", "Lcom/superwall/sdk/billing/QueryProductDetailsUseCaseParams;", "onReceive", "Lkotlin/Function1;", "", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "", "onError", "Lcom/superwall/sdk/billing/BillingError;", "withConnectedClient", "Lcom/android/billingclient/api/BillingClient;", "Lkotlin/ExtensionFunctionType;", "executeRequestOnUIThread", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "delayInMillis", "Lcom/superwall/sdk/billing/ExecuteRequestOnUIThreadFunction;", "<init>", "(Lcom/superwall/sdk/billing/QueryProductDetailsUseCaseParams;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V", "getOnReceive", "()Lkotlin/jvm/functions/Function1;", "getOnError", "getWithConnectedClient", "log", NotificationCompat.CATEGORY_MESSAGE, "", "executeAsync", "onOk", "received", "queryProductDetailsAsyncEnsuringOneResponse", "billingClient", "params", "Lcom/android/billingclient/api/QueryProductDetailsParams;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/android/billingclient/api/ProductDetailsResponseListener;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class QueryProductDetailsUseCase extends BillingClientUseCase<QueryProductDetailsResult> {
    private final Function1<BillingError, Unit> onError;
    private final Function1<List<StoreProduct>, Unit> onReceive;
    private final QueryProductDetailsUseCaseParams useCaseParams;
    private final Function1<Function1<? super BillingClient, Unit>, Unit> withConnectedClient;

    public final Function1<List<StoreProduct>, Unit> getOnReceive() {
        return this.onReceive;
    }

    public final Function1<BillingError, Unit> getOnError() {
        return this.onError;
    }

    public final Function1<Function1<? super BillingClient, Unit>, Unit> getWithConnectedClient() {
        return this.withConnectedClient;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public QueryProductDetailsUseCase(QueryProductDetailsUseCaseParams useCaseParams, Function1<? super List<StoreProduct>, Unit> onReceive, Function1<? super BillingError, Unit> onError, Function1<? super Function1<? super BillingClient, Unit>, Unit> withConnectedClient, Function2<? super Long, ? super Function1<? super BillingError, Unit>, Unit> executeRequestOnUIThread) {
        super(useCaseParams, onError, executeRequestOnUIThread);
        Intrinsics.checkNotNullParameter(useCaseParams, "useCaseParams");
        Intrinsics.checkNotNullParameter(onReceive, "onReceive");
        Intrinsics.checkNotNullParameter(onError, "onError");
        Intrinsics.checkNotNullParameter(withConnectedClient, "withConnectedClient");
        Intrinsics.checkNotNullParameter(executeRequestOnUIThread, "executeRequestOnUIThread");
        this.useCaseParams = useCaseParams;
        this.onReceive = onReceive;
        this.onError = onError;
        this.withConnectedClient = withConnectedClient;
    }

    private final void log(String msg) {
        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.productsManager, msg, null, null, 24, null);
    }

    @Override // com.superwall.sdk.billing.BillingClientUseCase
    public void executeAsync() {
        Set<String> subscriptionIds = this.useCaseParams.getSubscriptionIds();
        ArrayList arrayList = new ArrayList();
        for (Object obj : subscriptionIds) {
            if (((String) obj).length() > 0) {
                arrayList.add(obj);
            }
        }
        final Set set = CollectionsKt.toSet(arrayList);
        if (set.isEmpty()) {
            log("productId list is empty, skipping queryProductDetailsAsync call");
            this.onReceive.invoke(CollectionsKt.emptyList());
        } else {
            this.withConnectedClient.invoke(new Function1() { // from class: com.superwall.sdk.billing.QueryProductDetailsUseCase$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return QueryProductDetailsUseCase.executeAsync$lambda$1(this.f$0, set, (BillingClient) obj2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit executeAsync$lambda$1(final QueryProductDetailsUseCase queryProductDetailsUseCase, Set set, BillingClient withConnectedClient) {
        Intrinsics.checkNotNullParameter(withConnectedClient, "$this$withConnectedClient");
        queryProductDetailsUseCase.queryProductDetailsAsyncEnsuringOneResponse(withConnectedClient, BillingClientParamBuildersKt.buildQueryProductDetailsParams(queryProductDetailsUseCase.useCaseParams.getProductType(), set), new ProductDetailsResponseListener() { // from class: com.superwall.sdk.billing.QueryProductDetailsUseCase$$ExternalSyntheticLambda1
            @Override // com.android.billingclient.api.ProductDetailsResponseListener
            public final void onProductDetailsResponse(BillingResult billingResult, QueryProductDetailsResult queryProductDetailsResult) {
                QueryProductDetailsUseCase.executeAsync$lambda$1$processResult(this.f$0, billingResult, queryProductDetailsResult);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ void executeAsync$lambda$1$processResult(QueryProductDetailsUseCase queryProductDetailsUseCase, BillingResult billingResult, QueryProductDetailsResult queryProductDetailsResult) {
        BillingClientUseCase.processResult$default(queryProductDetailsUseCase, billingResult, queryProductDetailsResult, null, null, 12, null);
    }

    @Override // com.superwall.sdk.billing.BillingClientUseCase
    public void onOk(QueryProductDetailsResult received) {
        ArrayList arrayListEmptyList;
        Intrinsics.checkNotNullParameter(received, "received");
        List<ProductDetails> productDetailsList = received.getProductDetailsList();
        Intrinsics.checkNotNullExpressionValue(productDetailsList, "getProductDetailsList(...)");
        log("Products request finished for " + CollectionsKt.joinToString$default(this.useCaseParams.getSubscriptionIds(), null, null, null, 0, null, null, 63, null));
        List<ProductDetails> list = productDetailsList;
        log("Retrieved productDetailsList: " + CollectionsKt.joinToString$default(list, null, null, null, 0, null, new Function1() { // from class: com.superwall.sdk.billing.QueryProductDetailsUseCase$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return QueryProductDetailsUseCase.onOk$lambda$2((ProductDetails) obj);
            }
        }, 31, null));
        if (productDetailsList.isEmpty()) {
            productDetailsList = null;
        }
        if (productDetailsList != null) {
            for (ProductDetails productDetails : productDetailsList) {
                log(productDetails.getProductId() + " - " + productDetails);
            }
        }
        ArrayList arrayList = new ArrayList();
        for (ProductDetails productDetails2 : list) {
            List<DecomposedProductIds> list2 = this.useCaseParams.getDecomposedProductIdsBySubscriptionId().get(productDetails2.getProductId());
            if (list2 == null) {
                arrayListEmptyList = CollectionsKt.emptyList();
            } else {
                List<DecomposedProductIds> list3 = list2;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list3, 10));
                for (DecomposedProductIds decomposedProductIds : list3) {
                    Intrinsics.checkNotNull(productDetails2);
                    arrayList2.add(new StoreProduct(new RawStoreProduct(productDetails2, decomposedProductIds.getFullId(), decomposedProductIds.getBasePlanType(), decomposedProductIds.getOfferType())));
                }
                arrayListEmptyList = arrayList2;
            }
            CollectionsKt.addAll(arrayList, arrayListEmptyList);
        }
        this.onReceive.invoke(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence onOk$lambda$2(ProductDetails productDetails) {
        String string = productDetails.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    private final synchronized void queryProductDetailsAsyncEnsuringOneResponse(BillingClient billingClient, QueryProductDetailsParams params, final ProductDetailsResponseListener listener) {
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        billingClient.queryProductDetailsAsync(params, new ProductDetailsResponseListener() { // from class: com.superwall.sdk.billing.QueryProductDetailsUseCase$$ExternalSyntheticLambda3
            @Override // com.android.billingclient.api.ProductDetailsResponseListener
            public final void onProductDetailsResponse(BillingResult billingResult, QueryProductDetailsResult queryProductDetailsResult) {
                QueryProductDetailsUseCase.queryProductDetailsAsyncEnsuringOneResponse$lambda$7(atomicBoolean, this, listener, billingResult, queryProductDetailsResult);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void queryProductDetailsAsyncEnsuringOneResponse$lambda$7(AtomicBoolean atomicBoolean, QueryProductDetailsUseCase queryProductDetailsUseCase, ProductDetailsResponseListener productDetailsResponseListener, BillingResult billingResult, QueryProductDetailsResult productDetailsList) {
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        Intrinsics.checkNotNullParameter(productDetailsList, "productDetailsList");
        if (atomicBoolean.getAndSet(true)) {
            queryProductDetailsUseCase.log("BillingClient queryProductDetails has returned more than once, with result " + billingResult.getResponseCode());
        } else {
            productDetailsResponseListener.onProductDetailsResponse(billingResult, productDetailsList);
        }
    }
}
