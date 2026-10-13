package com.superwall.sdk.paywall.view.delegate;

import com.superwall.sdk.paywall.presentation.internal.state.PaywallResult;
import com.superwall.sdk.paywall.view.PaywallView;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: PaywallViewDelegateAdapter.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J(\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\nH\u0086@¢\u0006\u0002\u0010\u0014R\u0019\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\t\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u0015"}, d2 = {"Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;", "", "kotlinDelegate", "Lcom/superwall/sdk/paywall/view/delegate/PaywallViewCallback;", "<init>", "(Lcom/superwall/sdk/paywall/view/delegate/PaywallViewCallback;)V", "Ljava/lang/ref/WeakReference;", "getKotlinDelegate", "()Ljava/lang/ref/WeakReference;", "hasJavaDelegate", "", "getHasJavaDelegate", "()Z", "onFinished", "", "paywall", "Lcom/superwall/sdk/paywall/view/PaywallView;", "result", "Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;", "shouldDismiss", "(Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/paywall/presentation/internal/state/PaywallResult;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PaywallViewDelegateAdapter {
    private final WeakReference<PaywallViewCallback> kotlinDelegate;

    public final boolean getHasJavaDelegate() {
        return false;
    }

    public PaywallViewDelegateAdapter(PaywallViewCallback paywallViewCallback) {
        this.kotlinDelegate = new WeakReference<>(paywallViewCallback);
    }

    public final WeakReference<PaywallViewCallback> getKotlinDelegate() {
        return this.kotlinDelegate;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.view.delegate.PaywallViewDelegateAdapter$onFinished$2, reason: invalid class name */
    /* JADX INFO: compiled from: PaywallViewDelegateAdapter.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.view.delegate.PaywallViewDelegateAdapter$onFinished$2", f = "PaywallViewDelegateAdapter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ PaywallView $paywall;
        final /* synthetic */ PaywallResult $result;
        final /* synthetic */ boolean $shouldDismiss;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(PaywallView paywallView, PaywallResult paywallResult, boolean z, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$paywall = paywallView;
            this.$result = paywallResult;
            this.$shouldDismiss = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallViewDelegateAdapter.this.new AnonymousClass2(this.$paywall, this.$result, this.$shouldDismiss, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            PaywallViewCallback paywallViewCallback;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            WeakReference<PaywallViewCallback> kotlinDelegate = PaywallViewDelegateAdapter.this.getKotlinDelegate();
            if (kotlinDelegate == null || (paywallViewCallback = kotlinDelegate.get()) == null) {
                return null;
            }
            paywallViewCallback.onFinished(this.$paywall, this.$result, this.$shouldDismiss);
            return Unit.INSTANCE;
        }
    }

    public final Object onFinished(PaywallView paywallView, PaywallResult paywallResult, boolean z, Continuation<? super Unit> continuation) {
        return BuildersKt.withContext(Dispatchers.getMain(), new AnonymousClass2(paywallView, paywallResult, z, null), continuation);
    }
}
