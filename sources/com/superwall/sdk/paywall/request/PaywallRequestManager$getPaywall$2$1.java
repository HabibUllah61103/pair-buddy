package com.superwall.sdk.paywall.request;

import com.superwall.sdk.models.paywall.Paywall;
import com.superwall.sdk.store.abstractions.product.StoreProduct;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: PaywallRequestManager.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/models/paywall/Paywall;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.paywall.request.PaywallRequestManager$getPaywall$2$1", f = "PaywallRequestManager.kt", i = {0, 0, 2, 2, 3, 3, 4, 4}, l = {101, 106, 115, 117, 435, 168}, m = "invokeSuspend", n = {"requestHash", "paywall", "requestHash", "paywall", "requestHash", "paywall", "requestHash", "paywall"}, s = {"L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1"})
final class PaywallRequestManager$getPaywall$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Paywall>, Object> {
    final /* synthetic */ boolean $isPreloading;
    final /* synthetic */ PaywallRequest $request;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    boolean Z$0;
    int label;
    final /* synthetic */ PaywallRequestManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PaywallRequestManager$getPaywall$2$1(PaywallRequestManager paywallRequestManager, PaywallRequest paywallRequest, boolean z, Continuation<? super PaywallRequestManager$getPaywall$2$1> continuation) {
        super(2, continuation);
        this.this$0 = paywallRequestManager;
        this.$request = paywallRequest;
        this.$isPreloading = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PaywallRequestManager$getPaywall$2$1(this.this$0, this.$request, this.$isPreloading, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Paywall> continuation) {
        return ((PaywallRequestManager$getPaywall$2$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:102:0x02ca  */
    /* JADX WARN: Code duplicated, block: B:53:0x017f  */
    /* JADX WARN: Code duplicated, block: B:58:0x01a7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:77:0x020c  */
    /* JADX WARN: Code duplicated, block: B:87:0x0285  */
    /* JADX WARN: Code duplicated, block: B:90:0x028b  */
    /* JADX WARN: Code duplicated, block: B:93:0x0294  */
    /* JADX WARN: Code duplicated, block: B:95:0x0298  */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x02c4, code lost:
    
        if (r2 == r0) goto L99;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v19, types: [T, java.lang.Object] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r22) {
        /*
            Method dump skipped, instruction units count: 740
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.paywall.request.PaywallRequestManager$getPaywall$2$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence invokeSuspend$lambda$1(StoreProduct storeProduct) {
        return storeProduct.getProductIdentifier();
    }
}
