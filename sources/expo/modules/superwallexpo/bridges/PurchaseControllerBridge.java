package expo.modules.superwallexpo.bridges;

import android.app.Activity;
import com.android.billingclient.api.ProductDetails;
import com.superwall.sdk.delegate.PurchaseResult;
import com.superwall.sdk.delegate.RestorationResult;
import com.superwall.sdk.delegate.subscription_controller.PurchaseController;
import expo.modules.superwallexpo.SuperwallExpoModule;
import java.util.concurrent.CompletableFuture;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.future.FutureKt;

/* JADX INFO: compiled from: PurchaseControllerBridge.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0006J\u000e\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\fJ2\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0096@¢\u0006\u0002\u0010\u001bJ\u000e\u0010\u001c\u001a\u00020\fH\u0096@¢\u0006\u0002\u0010\u001dR\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\"\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\n¨\u0006\u001f"}, d2 = {"Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;", "Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;", "<init>", "()V", "purchasePromise", "Ljava/util/concurrent/CompletableFuture;", "Lcom/superwall/sdk/delegate/PurchaseResult;", "getPurchasePromise", "()Ljava/util/concurrent/CompletableFuture;", "setPurchasePromise", "(Ljava/util/concurrent/CompletableFuture;)V", "restorePromise", "Lcom/superwall/sdk/delegate/RestorationResult;", "getRestorePromise", "setRestorePromise", "completePurchase", "", "result", "completeRestore", "purchase", "activity", "Landroid/app/Activity;", "productDetails", "Lcom/android/billingclient/api/ProductDetails;", "basePlanId", "", "offerId", "(Landroid/app/Activity;Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "restorePurchases", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "expo-superwall_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PurchaseControllerBridge implements PurchaseController {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final PurchaseControllerBridge instance = new PurchaseControllerBridge();
    private CompletableFuture<PurchaseResult> purchasePromise;
    private CompletableFuture<RestorationResult> restorePromise;

    /* JADX INFO: renamed from: expo.modules.superwallexpo.bridges.PurchaseControllerBridge$purchase$1, reason: invalid class name */
    /* JADX INFO: compiled from: PurchaseControllerBridge.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "expo.modules.superwallexpo.bridges.PurchaseControllerBridge", f = "PurchaseControllerBridge.kt", i = {}, l = {49}, m = "purchase", n = {}, s = {})
    static final class AnonymousClass1 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PurchaseControllerBridge.this.purchase(null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: expo.modules.superwallexpo.bridges.PurchaseControllerBridge$restorePurchases$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PurchaseControllerBridge.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "expo.modules.superwallexpo.bridges.PurchaseControllerBridge", f = "PurchaseControllerBridge.kt", i = {}, l = {57}, m = "restorePurchases", n = {}, s = {})
    static final class C07021 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C07021(Continuation<? super C07021> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PurchaseControllerBridge.this.restorePurchases(this);
        }
    }

    public final CompletableFuture<PurchaseResult> getPurchasePromise() {
        return this.purchasePromise;
    }

    public final void setPurchasePromise(CompletableFuture<PurchaseResult> completableFuture) {
        this.purchasePromise = completableFuture;
    }

    public final CompletableFuture<RestorationResult> getRestorePromise() {
        return this.restorePromise;
    }

    public final void setRestorePromise(CompletableFuture<RestorationResult> completableFuture) {
        this.restorePromise = completableFuture;
    }

    /* JADX INFO: compiled from: PurchaseControllerBridge.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge$Companion;", "", "<init>", "()V", "instance", "Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;", "getInstance", "()Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;", "expo-superwall_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final PurchaseControllerBridge getInstance() {
            return PurchaseControllerBridge.instance;
        }
    }

    public final void completePurchase(PurchaseResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        CompletableFuture<PurchaseResult> completableFuture = this.purchasePromise;
        if (completableFuture != null) {
            completableFuture.complete(result);
        }
    }

    public final void completeRestore(RestorationResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        CompletableFuture<RestorationResult> completableFuture = this.restorePromise;
        if (completableFuture != null) {
            completableFuture.complete(result);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.superwall.sdk.delegate.subscription_controller.PurchaseController
    public Object purchase(Activity activity, ProductDetails productDetails, String str, String str2, Continuation<? super PurchaseResult> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
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
        Object objAwait = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objAwait);
            this.purchasePromise = new CompletableFuture<>();
            SuperwallExpoModule.INSTANCE.emitEvent("onPurchase", MapsKt.mapOf(TuplesKt.to("platform", "android"), TuplesKt.to("productId", productDetails.getProductId()), TuplesKt.to("basePlanId", str), TuplesKt.to("offerId", str2)));
            CompletableFuture<PurchaseResult> completableFuture = this.purchasePromise;
            Intrinsics.checkNotNull(completableFuture);
            anonymousClass1.label = 1;
            objAwait = FutureKt.await(completableFuture, anonymousClass1);
            if (objAwait == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objAwait);
        }
        Intrinsics.checkNotNullExpressionValue(objAwait, "await(...)");
        return objAwait;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.superwall.sdk.delegate.subscription_controller.PurchaseController
    public Object restorePurchases(Continuation<? super RestorationResult> continuation) throws Throwable {
        C07021 c07021;
        if (continuation instanceof C07021) {
            c07021 = (C07021) continuation;
            if ((c07021.label & Integer.MIN_VALUE) != 0) {
                c07021.label -= Integer.MIN_VALUE;
            } else {
                c07021 = new C07021(continuation);
            }
        } else {
            c07021 = new C07021(continuation);
        }
        Object objAwait = c07021.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c07021.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objAwait);
            this.restorePromise = new CompletableFuture<>();
            SuperwallExpoModule.INSTANCE.emitEvent("onPurchaseRestore", null);
            CompletableFuture<RestorationResult> completableFuture = this.restorePromise;
            Intrinsics.checkNotNull(completableFuture);
            c07021.label = 1;
            objAwait = FutureKt.await(completableFuture, c07021);
            if (objAwait == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objAwait);
        }
        Intrinsics.checkNotNullExpressionValue(objAwait, "await(...)");
        return objAwait;
    }
}
