package com.superwall.sdk.customer;

import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.IOScope;
import com.superwall.sdk.models.customer.CustomerInfo;
import com.superwall.sdk.models.customer.CustomerInfoMergingKt;
import com.superwall.sdk.models.entitlements.SubscriptionStatus;
import com.superwall.sdk.storage.LatestCustomerInfo;
import com.superwall.sdk.storage.LatestDeviceCustomerInfo;
import com.superwall.sdk.storage.LatestWebCustomerInfo;
import com.superwall.sdk.storage.Storage;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: CustomerInfoManager.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u0012\u0006\u0010\b\u001a\u00020\t\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u000b¢\u0006\u0004\b\u000f\u0010\u0010J\u0006\u0010\u0011\u001a\u00020\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/superwall/sdk/customer/CustomerInfoManager;", "", "storage", "Lcom/superwall/sdk/storage/Storage;", "updateCustomerInfo", "Lkotlin/Function1;", "Lcom/superwall/sdk/models/customer/CustomerInfo;", "", "ioScope", "Lcom/superwall/sdk/misc/IOScope;", "hasExternalPurchaseController", "Lkotlin/Function0;", "", "getSubscriptionStatus", "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;", "<init>", "(Lcom/superwall/sdk/storage/Storage;Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "updateMergedCustomerInfo", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CustomerInfoManager {
    private final Function0<SubscriptionStatus> getSubscriptionStatus;
    private final Function0<Boolean> hasExternalPurchaseController;
    private final IOScope ioScope;
    private final Storage storage;
    private final Function1<CustomerInfo, Unit> updateCustomerInfo;

    /* JADX WARN: Multi-variable type inference failed */
    public CustomerInfoManager(Storage storage, Function1<? super CustomerInfo, Unit> updateCustomerInfo, IOScope ioScope, Function0<Boolean> hasExternalPurchaseController, Function0<? extends SubscriptionStatus> getSubscriptionStatus) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(updateCustomerInfo, "updateCustomerInfo");
        Intrinsics.checkNotNullParameter(ioScope, "ioScope");
        Intrinsics.checkNotNullParameter(hasExternalPurchaseController, "hasExternalPurchaseController");
        Intrinsics.checkNotNullParameter(getSubscriptionStatus, "getSubscriptionStatus");
        this.storage = storage;
        this.updateCustomerInfo = updateCustomerInfo;
        this.ioScope = ioScope;
        this.hasExternalPurchaseController = hasExternalPurchaseController;
        this.getSubscriptionStatus = getSubscriptionStatus;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.customer.CustomerInfoManager$updateMergedCustomerInfo$1, reason: invalid class name */
    /* JADX INFO: compiled from: CustomerInfoManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.customer.CustomerInfoManager$updateMergedCustomerInfo$1", f = "CustomerInfoManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CustomerInfoManager.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CustomerInfo customerInfoMerge;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                if (!((Boolean) CustomerInfoManager.this.hasExternalPurchaseController.invoke()).booleanValue()) {
                    customerInfoMerge = (CustomerInfo) CustomerInfoManager.this.storage.read(LatestDeviceCustomerInfo.INSTANCE);
                    if (customerInfoMerge == null) {
                        customerInfoMerge = CustomerInfo.INSTANCE.empty();
                    }
                    CustomerInfo customerInfoEmpty = (CustomerInfo) CustomerInfoManager.this.storage.read(LatestWebCustomerInfo.INSTANCE);
                    if (customerInfoEmpty == null) {
                        customerInfoEmpty = CustomerInfo.INSTANCE.empty();
                    }
                    Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.superwallCore, "Merging CustomerInfo - Device: " + customerInfoMerge.getSubscriptions().size() + " subs, Web: " + customerInfoEmpty.getSubscriptions().size() + " subs", null, null, 24, null);
                    if (customerInfoMerge.isPlaceholder$superwall_release() && customerInfoEmpty.isPlaceholder$superwall_release()) {
                        customerInfoMerge = CustomerInfo.INSTANCE.empty();
                    } else if (customerInfoMerge.isPlaceholder$superwall_release()) {
                        customerInfoMerge = customerInfoEmpty;
                    } else if (!customerInfoEmpty.isPlaceholder$superwall_release()) {
                        customerInfoMerge = CustomerInfoMergingKt.merge(customerInfoMerge, customerInfoEmpty);
                    }
                    Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.superwallCore, "Merged CustomerInfo - Total: " + customerInfoMerge.getSubscriptions().size() + " subs, " + customerInfoMerge.getEntitlements().size() + " entitlements", null, null, 24, null);
                } else {
                    customerInfoMerge = CustomerInfo.INSTANCE.forExternalPurchaseController(CustomerInfoManager.this.storage, (SubscriptionStatus) CustomerInfoManager.this.getSubscriptionStatus.invoke());
                    Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.superwallCore, "Built CustomerInfo for external controller - " + customerInfoMerge.getSubscriptions().size() + " subs, " + customerInfoMerge.getEntitlements().size() + " entitlements", null, null, 24, null);
                }
                CustomerInfoManager.this.storage.write(LatestCustomerInfo.INSTANCE, customerInfoMerge);
                CustomerInfoManager.this.updateCustomerInfo.invoke(customerInfoMerge);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final void updateMergedCustomerInfo() {
        BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new AnonymousClass1(null), 3, null);
    }
}
