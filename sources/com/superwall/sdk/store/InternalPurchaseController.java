package com.superwall.sdk.store;

import android.app.Activity;
import android.content.Context;
import com.android.billingclient.api.ProductDetails;
import com.superwall.sdk.delegate.PurchaseResult;
import com.superwall.sdk.delegate.RestorationResult;
import com.superwall.sdk.delegate.subscription_controller.PurchaseController;
import com.superwall.sdk.delegate.subscription_controller.PurchaseControllerJava;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: InternalPurchaseController.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ2\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0096@¢\u0006\u0002\u0010\u001aJ\u000e\u0010\u001b\u001a\u00020\u001cH\u0096@¢\u0006\u0002\u0010\u001dR\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u000e¨\u0006\u001e"}, d2 = {"Lcom/superwall/sdk/store/InternalPurchaseController;", "Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;", "kotlinPurchaseController", "javaPurchaseController", "Lcom/superwall/sdk/delegate/subscription_controller/PurchaseControllerJava;", "context", "Landroid/content/Context;", "<init>", "(Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;Lcom/superwall/sdk/delegate/subscription_controller/PurchaseControllerJava;Landroid/content/Context;)V", "getContext", "()Landroid/content/Context;", "hasExternalPurchaseController", "", "getHasExternalPurchaseController", "()Z", "hasInternalPurchaseController", "getHasInternalPurchaseController", "purchase", "Lcom/superwall/sdk/delegate/PurchaseResult;", "activity", "Landroid/app/Activity;", "productDetails", "Lcom/android/billingclient/api/ProductDetails;", "basePlanId", "", "offerId", "(Landroid/app/Activity;Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "restorePurchases", "Lcom/superwall/sdk/delegate/RestorationResult;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class InternalPurchaseController implements PurchaseController {
    private final Context context;
    private final PurchaseControllerJava javaPurchaseController;
    private final PurchaseController kotlinPurchaseController;

    public InternalPurchaseController(PurchaseController purchaseController, PurchaseControllerJava purchaseControllerJava, Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.kotlinPurchaseController = purchaseController;
        this.javaPurchaseController = purchaseControllerJava;
        this.context = context;
    }

    public final Context getContext() {
        return this.context;
    }

    public final boolean getHasExternalPurchaseController() {
        return !getHasInternalPurchaseController();
    }

    public final boolean getHasInternalPurchaseController() {
        return this.kotlinPurchaseController instanceof AutomaticPurchaseController;
    }

    @Override // com.superwall.sdk.delegate.subscription_controller.PurchaseController
    public Object purchase(Activity activity, ProductDetails productDetails, String str, String str2, Continuation<? super PurchaseResult> continuation) {
        PurchaseController purchaseController = this.kotlinPurchaseController;
        if (purchaseController != null) {
            return purchaseController.purchase(activity, productDetails, str, str2, continuation);
        }
        if (this.javaPurchaseController != null) {
            SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.intercepted(continuation));
            final SafeContinuation safeContinuation2 = safeContinuation;
            this.javaPurchaseController.purchase(productDetails, str, str2, new Function1<PurchaseResult, Unit>() { // from class: com.superwall.sdk.store.InternalPurchaseController$purchase$2$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(PurchaseResult purchaseResult) {
                    invoke2(purchaseResult);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(PurchaseResult result) {
                    Intrinsics.checkNotNullParameter(result, "result");
                    Continuation<PurchaseResult> continuation2 = safeContinuation2;
                    Result.Companion companion = Result.INSTANCE;
                    continuation2.resumeWith(Result.m11241constructorimpl(result));
                }
            });
            Object orThrow = safeContinuation.getOrThrow();
            if (orThrow == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return orThrow;
        }
        return new PurchaseResult.Cancelled();
    }

    @Override // com.superwall.sdk.delegate.subscription_controller.PurchaseController
    public Object restorePurchases(Continuation<? super RestorationResult> continuation) {
        PurchaseController purchaseController = this.kotlinPurchaseController;
        if (purchaseController != null) {
            return purchaseController.restorePurchases(continuation);
        }
        if (this.javaPurchaseController != null) {
            SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.intercepted(continuation));
            final SafeContinuation safeContinuation2 = safeContinuation;
            this.javaPurchaseController.restorePurchases(new Function2<RestorationResult, Throwable, Unit>() { // from class: com.superwall.sdk.store.InternalPurchaseController$restorePurchases$2$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(RestorationResult restorationResult, Throwable th) {
                    invoke2(restorationResult, th);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(RestorationResult result, Throwable th) {
                    Intrinsics.checkNotNullParameter(result, "result");
                    if (th == null) {
                        Continuation<RestorationResult> continuation2 = safeContinuation2;
                        Result.Companion companion = Result.INSTANCE;
                        continuation2.resumeWith(Result.m11241constructorimpl(result));
                    } else {
                        Continuation<RestorationResult> continuation3 = safeContinuation2;
                        Result.Companion companion2 = Result.INSTANCE;
                        continuation3.resumeWith(Result.m11241constructorimpl(new RestorationResult.Failed(th)));
                    }
                }
            });
            Object orThrow = safeContinuation.getOrThrow();
            if (orThrow == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return orThrow;
        }
        return new RestorationResult.Failed(null);
    }
}
