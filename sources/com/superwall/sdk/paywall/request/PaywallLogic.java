package com.superwall.sdk.paywall.request;

import androidx.core.app.NotificationCompat;
import com.facebook.hermes.intl.Constants;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.analytics.internal.TrackingKt;
import com.superwall.sdk.analytics.internal.TrackingResult;
import com.superwall.sdk.analytics.internal.trackable.Trackable;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.models.customer.CustomerInfo;
import com.superwall.sdk.models.entitlements.Entitlement;
import com.superwall.sdk.models.events.EventData;
import com.superwall.sdk.models.paywall.IntroOfferEligibility;
import com.superwall.sdk.models.product.ProductItem;
import com.superwall.sdk.models.product.ProductVariable;
import com.superwall.sdk.models.product.Store;
import com.superwall.sdk.store.abstractions.product.StoreProduct;
import expo.modules.notifications.service.NotificationsService;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;

/* JADX INFO: compiled from: PaywallLogic.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J0\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\u00052\b\u0010\n\u001a\u0004\u0018\u00010\u0005JZ\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\b\u0010\u0007\u001a\u0004\u0018\u00010\b2;\b\u0002\u0010\u000e\u001a5\b\u0001\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0007\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u00140\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u000f¢\u0006\u0002\u0010\u0016JI\u0010\u0017\u001a\u00020\u00182\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a2\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u001e0\u001d2\b\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"2\b\b\u0002\u0010#\u001a\u00020$¢\u0006\u0002\u0010%J:\u0010&\u001a\u00020 2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a2\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u001e0\u001d2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0002J=\u0010'\u001a\u00020 2\u0006\u0010\u0012\u001a\u00020\u00052\b\u0010(\u001a\u0004\u0018\u00010)2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020,0+2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0002¢\u0006\u0002\u0010-J\u001e\u0010.\u001a\u00020 2\f\u0010/\u001a\b\u0012\u0004\u0012\u00020,0+2\u0006\u0010!\u001a\u00020\"H\u0002¨\u00060"}, d2 = {"Lcom/superwall/sdk/paywall/request/PaywallLogic;", "", "<init>", "()V", "requestHash", "", NotificationsService.IDENTIFIER_KEY, NotificationCompat.CATEGORY_EVENT, "Lcom/superwall/sdk/models/events/EventData;", Constants.LOCALE, "joinedSubstituteProductIds", "handlePaywallError", "", com.google.firebase.messaging.Constants.IPC_BUNDLE_KEY_SEND_ERROR, "trackEvent", "Lkotlin/Function2;", "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;", "Lkotlin/ParameterName;", "name", "Lkotlin/coroutines/Continuation;", "Lkotlin/Result;", "Lcom/superwall/sdk/analytics/internal/TrackingResult;", "(Ljava/lang/Throwable;Lcom/superwall/sdk/models/events/EventData;Lkotlin/jvm/functions/Function2;)Ljava/lang/Throwable;", "getVariablesAndFreeTrial", "Lcom/superwall/sdk/paywall/request/ProductProcessingOutcome;", "productItems", "", "Lcom/superwall/sdk/models/product/ProductItem;", "productsByFullId", "", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "isFreeTrialAvailableOverride", "", "customerInfo", "Lcom/superwall/sdk/models/customer/CustomerInfo;", "introOfferEligibility", "Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;", "(Ljava/util/List;Ljava/util/Map;Ljava/lang/Boolean;Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;)Lcom/superwall/sdk/paywall/request/ProductProcessingOutcome;", "computeHasFreeTrial", "isWebTrialAvailable", "trialDays", "", "entitlements", "", "Lcom/superwall/sdk/models/entitlements/Entitlement;", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Set;Lcom/superwall/sdk/models/customer/CustomerInfo;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;)Z", "hasEverHadEntitlement", "productEntitlements", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PaywallLogic {
    public static final PaywallLogic INSTANCE = new PaywallLogic();

    /* JADX INFO: compiled from: PaywallLogic.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IntroOfferEligibility.values().length];
            try {
                iArr[IntroOfferEligibility.INELIGIBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IntroOfferEligibility.ELIGIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[IntroOfferEligibility.AUTOMATIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private PaywallLogic() {
    }

    public static /* synthetic */ String requestHash$default(PaywallLogic paywallLogic, String str, EventData eventData, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            eventData = null;
        }
        return paywallLogic.requestHash(str, eventData, str2, str3);
    }

    public final String requestHash(String identifier, EventData event, String locale, String joinedSubstituteProductIds) {
        Intrinsics.checkNotNullParameter(locale, "locale");
        if (identifier == null) {
            identifier = event != null ? event.getName() : null;
            if (identifier == null) {
                identifier = "$called_manually";
            }
        }
        if (joinedSubstituteProductIds == null) {
            joinedSubstituteProductIds = "";
        }
        return identifier + "_" + locale + "_" + ((Object) joinedSubstituteProductIds);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Throwable handlePaywallError$default(PaywallLogic paywallLogic, Throwable th, EventData eventData, Function2 function2, int i, Object obj) {
        if ((i & 4) != 0) {
            function2 = null;
        }
        return paywallLogic.handlePaywallError(th, eventData, function2);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.request.PaywallLogic$handlePaywallError$1, reason: invalid class name */
    /* JADX INFO: compiled from: PaywallLogic.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/superwall/sdk/analytics/internal/TrackingResult;", NotificationCompat.CATEGORY_EVENT, "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.request.PaywallLogic$handlePaywallError$1", f = "PaywallLogic.kt", i = {}, l = {62}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<Trackable, Continuation<? super Result<? extends TrackingResult>>, Object> {
        /* synthetic */ Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(Trackable trackable, Continuation<? super Result<TrackingResult>> continuation) {
            return ((AnonymousClass1) create(trackable, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Trackable trackable, Continuation<? super Result<? extends TrackingResult>> continuation) {
            return invoke2(trackable, (Continuation<? super Result<TrackingResult>>) continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objTrack;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Trackable trackable = (Trackable) this.L$0;
                this.label = 1;
                objTrack = TrackingKt.track(Superwall.INSTANCE.getInstance(), trackable, this);
                if (objTrack == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                objTrack = ((Result) obj).getValue();
            }
            return Result.m11240boximpl(objTrack);
        }
    }

    public final Throwable handlePaywallError(Throwable error, EventData event, Function2<? super Trackable, ? super Continuation<? super Result<TrackingResult>>, ? extends Object> trackEvent) {
        Intrinsics.checkNotNullParameter(error, "error");
        if (trackEvent == null) {
            new AnonymousClass1(null);
        }
        return new Exception("Not Found");
    }

    public static /* synthetic */ ProductProcessingOutcome getVariablesAndFreeTrial$default(PaywallLogic paywallLogic, List list, Map map, Boolean bool, CustomerInfo customerInfo, IntroOfferEligibility introOfferEligibility, int i, Object obj) {
        if ((i & 16) != 0) {
            introOfferEligibility = IntroOfferEligibility.AUTOMATIC;
        }
        return paywallLogic.getVariablesAndFreeTrial(list, map, bool, customerInfo, introOfferEligibility);
    }

    public final ProductProcessingOutcome getVariablesAndFreeTrial(List<ProductItem> productItems, Map<String, StoreProduct> productsByFullId, Boolean isFreeTrialAvailableOverride, CustomerInfo customerInfo, IntroOfferEligibility introOfferEligibility) {
        boolean zComputeHasFreeTrial;
        Intrinsics.checkNotNullParameter(productItems, "productItems");
        Intrinsics.checkNotNullParameter(productsByFullId, "productsByFullId");
        Intrinsics.checkNotNullParameter(customerInfo, "customerInfo");
        Intrinsics.checkNotNullParameter(introOfferEligibility, "introOfferEligibility");
        ArrayList arrayList = new ArrayList();
        for (ProductItem productItem : productItems) {
            StoreProduct storeProduct = productsByFullId.get(productItem.getFullProductId());
            if (storeProduct != null) {
                arrayList.add(new ProductVariable(productItem.getName(), storeProduct.getAttributes()));
            }
        }
        if (isFreeTrialAvailableOverride != null) {
            zComputeHasFreeTrial = isFreeTrialAvailableOverride.booleanValue();
        } else {
            zComputeHasFreeTrial = computeHasFreeTrial(productItems, productsByFullId, customerInfo, introOfferEligibility);
        }
        return new ProductProcessingOutcome(arrayList, zComputeHasFreeTrial);
    }

    private final boolean computeHasFreeTrial(List<ProductItem> productItems, Map<String, StoreProduct> productsByFullId, CustomerInfo customerInfo, IntroOfferEligibility introOfferEligibility) {
        CustomerInfo customerInfo2;
        IntroOfferEligibility introOfferEligibility2;
        boolean zIsWebTrialAvailable;
        List<ProductItem> list = productItems;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        for (ProductItem productItem : list) {
            ProductItem.StoreProductType type = productItem.getType();
            if ((type instanceof ProductItem.StoreProductType.PlayStore) || (type instanceof ProductItem.StoreProductType.AppStore) || (type instanceof ProductItem.StoreProductType.Other)) {
                customerInfo2 = customerInfo;
                introOfferEligibility2 = introOfferEligibility;
                StoreProduct storeProduct = productsByFullId.get(productItem.getFullProductId());
                zIsWebTrialAvailable = storeProduct != null && storeProduct.getHasFreeTrial();
            } else if (type instanceof ProductItem.StoreProductType.Stripe) {
                customerInfo2 = customerInfo;
                introOfferEligibility2 = introOfferEligibility;
                zIsWebTrialAvailable = INSTANCE.isWebTrialAvailable(productItem.getName(), ((ProductItem.StoreProductType.Stripe) type).getProduct().getTrialDays(), productItem.getEntitlements(), customerInfo2, introOfferEligibility2);
            } else {
                customerInfo2 = customerInfo;
                introOfferEligibility2 = introOfferEligibility;
                if (!(type instanceof ProductItem.StoreProductType.Paddle)) {
                    throw new NoWhenBranchMatchedException();
                }
                zIsWebTrialAvailable = INSTANCE.isWebTrialAvailable(productItem.getName(), ((ProductItem.StoreProductType.Paddle) type).getProduct().getTrialDays(), productItem.getEntitlements(), customerInfo2, introOfferEligibility2);
            }
            if (zIsWebTrialAvailable) {
                return true;
            }
            customerInfo = customerInfo2;
            introOfferEligibility = introOfferEligibility2;
        }
        return false;
    }

    private final boolean isWebTrialAvailable(String name, Integer trialDays, Set<Entitlement> entitlements, CustomerInfo customerInfo, IntroOfferEligibility introOfferEligibility) {
        int i;
        if ((trialDays != null ? trialDays.intValue() : 0) <= 0 || (i = WhenMappings.$EnumSwitchMapping$0[introOfferEligibility.ordinal()]) == 1) {
            return false;
        }
        if (i == 2) {
            return true;
        }
        if (i != 3) {
            throw new NoWhenBranchMatchedException();
        }
        if (entitlements.isEmpty()) {
            Logger.debug$default(Logger.INSTANCE, LogLevel.warn, LogScope.paywallPresentation, name + " has trialDays > 0 but no entitlements — skipping trial eligibility check", null, null, 24, null);
            return false;
        }
        return !hasEverHadEntitlement(entitlements, customerInfo);
    }

    private final boolean hasEverHadEntitlement(Set<Entitlement> productEntitlements, CustomerInfo customerInfo) {
        if (customerInfo.isPlaceholder$superwall_release()) {
            return true;
        }
        Set set = SequencesKt.toSet(SequencesKt.map(SequencesKt.filter(CollectionsKt.asSequence(customerInfo.getEntitlements()), new Function1() { // from class: com.superwall.sdk.paywall.request.PaywallLogic$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(PaywallLogic.hasEverHadEntitlement$lambda$2((Entitlement) obj));
            }
        }), new Function1() { // from class: com.superwall.sdk.paywall.request.PaywallLogic$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PaywallLogic.hasEverHadEntitlement$lambda$3((Entitlement) obj);
            }
        }));
        Set<Entitlement> set2 = productEntitlements;
        if ((set2 instanceof Collection) && set2.isEmpty()) {
            return false;
        }
        Iterator<T> it = set2.iterator();
        while (it.hasNext()) {
            if (set.contains(((Entitlement) it.next()).getId())) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean hasEverHadEntitlement$lambda$2(Entitlement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.getLatestProductId() != null || it.getStore() == Store.SUPERWALL || it.isActive();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String hasEverHadEntitlement$lambda$3(Entitlement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.getId();
    }
}
