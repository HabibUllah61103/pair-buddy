package com.superwall.sdk.store.testmode;

import android.app.Activity;
import com.superwall.sdk.delegate.PurchaseResult;
import com.superwall.sdk.delegate.RestorationResult;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.ActivityProvider;
import com.superwall.sdk.misc.CurrentActivityTracker;
import com.superwall.sdk.models.entitlements.Entitlement;
import com.superwall.sdk.store.abstractions.product.StoreProductType;
import com.superwall.sdk.store.testmode.models.SuperwallEntitlementRef;
import com.superwall.sdk.store.testmode.models.SuperwallProduct;
import com.superwall.sdk.store.testmode.ui.EntitlementSelection;
import com.superwall.sdk.store.testmode.ui.PurchaseSimulationResult;
import com.superwall.sdk.store.testmode.ui.RestoreSimulationResult;
import com.superwall.sdk.store.testmode.ui.TestModePurchaseDrawer;
import com.superwall.sdk.store.testmode.ui.TestModeRestoreDrawer;
import com.superwall.sdk.store.transactions.TransactionManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TestModeTransactionHandler.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\n\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0002J\u001e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0086@¢\u0006\u0002\u0010\u0012J\u000e\u0010\u0013\u001a\u00020\u0014H\u0086@¢\u0006\u0002\u0010\u0015J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0019J\u0014\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001b2\u0006\u0010\u0018\u001a\u00020\u0019R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/superwall/sdk/store/testmode/TestModeTransactionHandler;", "", "testMode", "Lcom/superwall/sdk/store/testmode/TestMode;", "activityProvider", "Lcom/superwall/sdk/misc/ActivityProvider;", "activityTracker", "Lcom/superwall/sdk/misc/CurrentActivityTracker;", "<init>", "(Lcom/superwall/sdk/store/testmode/TestMode;Lcom/superwall/sdk/misc/ActivityProvider;Lcom/superwall/sdk/misc/CurrentActivityTracker;)V", "getForegroundActivity", "Landroid/app/Activity;", "handlePurchase", "Lcom/superwall/sdk/delegate/PurchaseResult;", "product", "Lcom/superwall/sdk/store/abstractions/product/StoreProductType;", "purchaseSource", "Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;", "(Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "handleRestore", "Lcom/superwall/sdk/delegate/RestorationResult;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "findSuperwallProductForId", "Lcom/superwall/sdk/store/testmode/models/SuperwallProduct;", "productId", "", "entitlementsForProduct", "", "Lcom/superwall/sdk/models/entitlements/Entitlement;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TestModeTransactionHandler {
    private final ActivityProvider activityProvider;
    private final CurrentActivityTracker activityTracker;
    private final TestMode testMode;

    /* JADX INFO: renamed from: com.superwall.sdk.store.testmode.TestModeTransactionHandler$handlePurchase$1, reason: invalid class name */
    /* JADX INFO: compiled from: TestModeTransactionHandler.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.testmode.TestModeTransactionHandler", f = "TestModeTransactionHandler.kt", i = {0, 0}, l = {52}, m = "handlePurchase", n = {"this", "entitlements"}, s = {"L$0", "L$1"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TestModeTransactionHandler.this.handlePurchase(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.store.testmode.TestModeTransactionHandler$handleRestore$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TestModeTransactionHandler.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.store.testmode.TestModeTransactionHandler", f = "TestModeTransactionHandler.kt", i = {0}, l = {92}, m = "handleRestore", n = {"this"}, s = {"L$0"})
    static final class C06081 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C06081(Continuation<? super C06081> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TestModeTransactionHandler.this.handleRestore(this);
        }
    }

    public TestModeTransactionHandler(TestMode testMode, ActivityProvider activityProvider, CurrentActivityTracker currentActivityTracker) {
        Intrinsics.checkNotNullParameter(testMode, "testMode");
        Intrinsics.checkNotNullParameter(activityProvider, "activityProvider");
        this.testMode = testMode;
        this.activityProvider = activityProvider;
        this.activityTracker = currentActivityTracker;
    }

    public /* synthetic */ TestModeTransactionHandler(TestMode testMode, ActivityProvider activityProvider, CurrentActivityTracker currentActivityTracker, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(testMode, activityProvider, (i & 4) != 0 ? null : currentActivityTracker);
    }

    private final Activity getForegroundActivity() {
        Activity currentActivity;
        CurrentActivityTracker currentActivityTracker = this.activityTracker;
        return (currentActivityTracker == null || (currentActivity = currentActivityTracker.getCurrentActivity()) == null) ? this.activityProvider.getCurrentActivity() : currentActivity;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    public final Object handlePurchase(StoreProductType storeProductType, TransactionManager.PurchaseSource purchaseSource, Continuation<? super PurchaseResult> continuation) {
        AnonymousClass1 anonymousClass1;
        Object next;
        List<SuperwallEntitlementRef> listEmptyList;
        TestModeTransactionHandler testModeTransactionHandler;
        List<SuperwallEntitlementRef> list;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        AnonymousClass1 anonymousClass2 = anonymousClass1;
        Object objShow = anonymousClass2.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass2.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objShow);
            Activity foregroundActivity = getForegroundActivity();
            if (foregroundActivity == null) {
                return new PurchaseResult.Failed("Activity not found - required for test mode purchase drawer");
            }
            Iterator<T> it = this.testMode.getProducts().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.areEqual(((SuperwallProduct) next).getIdentifier(), storeProductType.getFullIdentifier()));
            SuperwallProduct superwallProduct = (SuperwallProduct) next;
            if (superwallProduct == null || (listEmptyList = superwallProduct.getEntitlements()) == null) {
                listEmptyList = CollectionsKt.emptyList();
            }
            List<SuperwallEntitlementRef> list2 = listEmptyList;
            boolean zShouldShowFreeTrial = this.testMode.shouldShowFreeTrial(storeProductType.getHasFreeTrial());
            Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.paywallTransactions, "Test mode: showing purchase drawer for " + storeProductType.getFullIdentifier(), null, null, 24, null);
            TestModePurchaseDrawer testModePurchaseDrawer = TestModePurchaseDrawer.INSTANCE;
            String fullIdentifier = storeProductType.getFullIdentifier();
            String localizedPrice = storeProductType.getLocalizedPrice();
            String period = storeProductType.getPeriod();
            String trialPeriodText = storeProductType.getTrialPeriodText();
            List<SuperwallEntitlementRef> list3 = list2;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list3, 10));
            Iterator<T> it2 = list3.iterator();
            while (it2.hasNext()) {
                arrayList.add(((SuperwallEntitlementRef) it2.next()).getIdentifier());
            }
            anonymousClass2.L$0 = this;
            anonymousClass2.L$1 = list2;
            anonymousClass2.label = 1;
            objShow = testModePurchaseDrawer.show(foregroundActivity, fullIdentifier, localizedPrice, period, zShouldShowFreeTrial, trialPeriodText, arrayList, anonymousClass2);
            if (objShow == coroutine_suspended) {
                return coroutine_suspended;
            }
            testModeTransactionHandler = this;
            list = list2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            list = (List) anonymousClass2.L$1;
            testModeTransactionHandler = (TestModeTransactionHandler) anonymousClass2.L$0;
            ResultKt.throwOnFailure(objShow);
        }
        PurchaseSimulationResult purchaseSimulationResult = (PurchaseSimulationResult) objShow;
        if (purchaseSimulationResult instanceof PurchaseSimulationResult.Purchased) {
            testModeTransactionHandler.testMode.fakePurchase(list);
            testModeTransactionHandler.testMode.setOverriddenSubscriptionStatus(testModeTransactionHandler.testMode.buildSubscriptionStatus());
            return new PurchaseResult.Purchased();
        }
        if (purchaseSimulationResult instanceof PurchaseSimulationResult.Abandoned) {
            return new PurchaseResult.Cancelled();
        }
        if (!(purchaseSimulationResult instanceof PurchaseSimulationResult.Failed)) {
            throw new NoWhenBranchMatchedException();
        }
        return new PurchaseResult.Failed("Simulated purchase failure (test mode)");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object handleRestore(Continuation<? super RestorationResult> continuation) {
        C06081 c06081;
        TestModeTransactionHandler testModeTransactionHandler;
        if (continuation instanceof C06081) {
            c06081 = (C06081) continuation;
            if ((c06081.label & Integer.MIN_VALUE) != 0) {
                c06081.label -= Integer.MIN_VALUE;
            } else {
                c06081 = new C06081(continuation);
            }
        } else {
            c06081 = new C06081(continuation);
        }
        Object objShow = c06081.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c06081.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objShow);
            Activity foregroundActivity = getForegroundActivity();
            if (foregroundActivity == null) {
                return new RestorationResult.Failed(new Throwable("Activity not found"));
            }
            Set<String> setAllEntitlements = this.testMode.allEntitlements();
            Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.paywallTransactions, "Test mode: showing restore drawer with " + setAllEntitlements.size() + " entitlements", null, null, 24, null);
            TestModeRestoreDrawer testModeRestoreDrawer = TestModeRestoreDrawer.INSTANCE;
            List<String> list = CollectionsKt.toList(setAllEntitlements);
            List<EntitlementSelection> testEntitlementSelections = this.testMode.getTestEntitlementSelections();
            c06081.L$0 = this;
            c06081.label = 1;
            objShow = testModeRestoreDrawer.show(foregroundActivity, list, testEntitlementSelections, c06081);
            if (objShow == coroutine_suspended) {
                return coroutine_suspended;
            }
            testModeTransactionHandler = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            testModeTransactionHandler = (TestModeTransactionHandler) c06081.L$0;
            ResultKt.throwOnFailure(objShow);
        }
        RestoreSimulationResult restoreSimulationResult = (RestoreSimulationResult) objShow;
        if (restoreSimulationResult instanceof RestoreSimulationResult.Restored) {
            testModeTransactionHandler.testMode.setEntitlements(((RestoreSimulationResult.Restored) restoreSimulationResult).getSelectedEntitlements());
            testModeTransactionHandler.testMode.setOverriddenSubscriptionStatus(testModeTransactionHandler.testMode.buildSubscriptionStatus());
            return new RestorationResult.Restored();
        }
        if (!(restoreSimulationResult instanceof RestoreSimulationResult.Cancelled)) {
            throw new NoWhenBranchMatchedException();
        }
        return new RestorationResult.Failed(null);
    }

    public final SuperwallProduct findSuperwallProductForId(String productId) {
        Object next;
        Intrinsics.checkNotNullParameter(productId, "productId");
        Iterator<T> it = this.testMode.getProducts().iterator();
        while (it.hasNext()) {
            next = it.next();
            if (Intrinsics.areEqual(((SuperwallProduct) next).getIdentifier(), productId)) {
                return (SuperwallProduct) next;
            }
        }
        next = null;
        return (SuperwallProduct) next;
    }

    public final Set<Entitlement> entitlementsForProduct(String productId) {
        Intrinsics.checkNotNullParameter(productId, "productId");
        SuperwallProduct superwallProductFindSuperwallProductForId = findSuperwallProductForId(productId);
        if (superwallProductFindSuperwallProductForId == null) {
            return SetsKt.emptySet();
        }
        List<SuperwallEntitlementRef> entitlements = superwallProductFindSuperwallProductForId.getEntitlements();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(entitlements, 10));
        Iterator<T> it = entitlements.iterator();
        while (it.hasNext()) {
            arrayList.add(new Entitlement(((SuperwallEntitlementRef) it.next()).getIdentifier()));
        }
        return CollectionsKt.toSet(arrayList);
    }
}
