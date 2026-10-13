package com.superwall.sdk.paywall.presentation.get_paywall.builder;

import android.app.Activity;
import android.view.View;
import androidx.exifinterface.media.ExifInterface;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.misc.IOScope;
import com.superwall.sdk.paywall.presentation.get_paywall.PublicGetPaywallKt;
import com.superwall.sdk.paywall.presentation.internal.request.PaywallOverrides;
import com.superwall.sdk.paywall.view.LoadingView;
import com.superwall.sdk.paywall.view.PaywallPurchaseLoadingView;
import com.superwall.sdk.paywall.view.PaywallShimmerView;
import com.superwall.sdk.paywall.view.PaywallView;
import com.superwall.sdk.paywall.view.ShimmerView;
import com.superwall.sdk.paywall.view.delegate.PaywallViewCallback;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: PaywallBuilder.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001c\u0010\b\u001a\u00020\u00002\u0014\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001\u0018\u00010\tJ\u0010\u0010\u0014\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\rJ!\u0010\u0015\u001a\u00020\u0000\"\f\b\u0000\u0010\u0016*\u00020\u000f*\u00020\u00172\u0006\u0010\u0015\u001a\u0002H\u0016¢\u0006\u0002\u0010\u0018J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0013J!\u0010\u0010\u001a\u00020\u0000\"\f\b\u0000\u0010\u0016*\u00020\u0011*\u00020\u00172\u0006\u0010\u0010\u001a\u0002H\u0016¢\u0006\u0002\u0010\u0018J\u0016\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0086@¢\u0006\u0004\b\u001c\u0010\u001dJ5\u0010\u0019\u001a\u00020\u001e2\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001e0 2\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u001e0 H\u0007¢\u0006\u0002\b#J\u0006\u0010$\u001a\u00020\u001bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001c\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;", "", "placement", "", "<init>", "(Ljava/lang/String;)V", "getPlacement", "()Ljava/lang/String;", "params", "", "paywallOverrides", "Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;", "delegate", "Lcom/superwall/sdk/paywall/view/delegate/PaywallViewCallback;", "shimmmerView", "Lcom/superwall/sdk/paywall/view/PaywallShimmerView;", "purchaseLoadingView", "Lcom/superwall/sdk/paywall/view/PaywallPurchaseLoadingView;", "activity", "Landroid/app/Activity;", "overrides", "shimmerView", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/view/View;", "(Landroid/view/View;)Lcom/superwall/sdk/paywall/presentation/get_paywall/builder/PaywallBuilder;", "build", "Lkotlin/Result;", "Lcom/superwall/sdk/paywall/view/PaywallView;", "build-IoAF18A", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "onSuccess", "Lkotlin/Function1;", "onError", "", "buildWithCallback", "buildSync", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PaywallBuilder {
    private Activity activity;
    private PaywallViewCallback delegate;
    private Map<String, ? extends Object> params;
    private PaywallOverrides paywallOverrides;
    private final String placement;
    private PaywallPurchaseLoadingView purchaseLoadingView;
    private PaywallShimmerView shimmmerView;

    public PaywallBuilder(String placement) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        this.placement = placement;
    }

    public final String getPlacement() {
        return this.placement;
    }

    public final PaywallBuilder params(Map<String, ? extends Object> params) {
        this.params = params;
        return this;
    }

    public final PaywallBuilder overrides(PaywallOverrides paywallOverrides) {
        this.paywallOverrides = paywallOverrides;
        return this;
    }

    public final PaywallBuilder delegate(PaywallViewCallback delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
        return this;
    }

    public final <T extends View & PaywallShimmerView> PaywallBuilder shimmerView(T shimmerView) {
        Intrinsics.checkNotNullParameter(shimmerView, "shimmerView");
        this.shimmmerView = shimmerView;
        return this;
    }

    public final PaywallBuilder activity(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.activity = activity;
        return this;
    }

    public final <T extends View & PaywallPurchaseLoadingView> PaywallBuilder purchaseLoadingView(T purchaseLoadingView) {
        Intrinsics.checkNotNullParameter(purchaseLoadingView, "purchaseLoadingView");
        this.purchaseLoadingView = purchaseLoadingView;
        return this;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX INFO: renamed from: build-IoAF18A, reason: not valid java name */
    public final Object m10705buildIoAF18A(Continuation<? super Result<PaywallView>> continuation) {
        PaywallBuilder$build$1 paywallBuilder$build$1;
        Object paywall;
        PaywallBuilder paywallBuilder;
        if (continuation instanceof PaywallBuilder$build$1) {
            paywallBuilder$build$1 = (PaywallBuilder$build$1) continuation;
            if ((paywallBuilder$build$1.label & Integer.MIN_VALUE) != 0) {
                paywallBuilder$build$1.label -= Integer.MIN_VALUE;
            } else {
                paywallBuilder$build$1 = new PaywallBuilder$build$1(this, continuation);
            }
        } else {
            paywallBuilder$build$1 = new PaywallBuilder$build$1(this, continuation);
        }
        PaywallBuilder$build$1 paywallBuilder$build$2 = paywallBuilder$build$1;
        Object obj = paywallBuilder$build$2.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = paywallBuilder$build$2.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Superwall companion = Superwall.INSTANCE.getInstance();
            String str = this.placement;
            Map<String, ? extends Object> map = this.params;
            PaywallOverrides paywallOverrides = this.paywallOverrides;
            PaywallViewCallback paywallViewCallback = this.delegate;
            Intrinsics.checkNotNull(paywallViewCallback);
            paywallBuilder$build$2.L$0 = this;
            paywallBuilder$build$2.label = 1;
            paywall = PublicGetPaywallKt.getPaywall(companion, str, map, paywallOverrides, paywallViewCallback, paywallBuilder$build$2);
            if (paywall == coroutine_suspended) {
                return coroutine_suspended;
            }
            paywallBuilder = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            paywallBuilder = (PaywallBuilder) paywallBuilder$build$2.L$0;
            ResultKt.throwOnFailure(obj);
            paywall = ((Result) obj).getValue();
        }
        if (Result.m11248isSuccessimpl(paywall)) {
            PaywallView paywallView = (PaywallView) paywall;
            paywallView.setEncapsulatingActivity(new WeakReference<>(paywallBuilder.activity));
            ShimmerView shimmerView = paywallBuilder.shimmmerView;
            if (shimmerView == null) {
                Activity activity = paywallBuilder.activity;
                Intrinsics.checkNotNull(activity);
                shimmerView = new ShimmerView(activity, null, 2, null);
            }
            LoadingView loadingView = paywallBuilder.purchaseLoadingView;
            if (loadingView == null) {
                Activity activity2 = paywallBuilder.activity;
                Intrinsics.checkNotNull(activity2);
                loadingView = new LoadingView(activity2, null, 0, 0, 14, null);
            }
            paywallView.setupWith(shimmerView, loadingView);
            paywallView.setupShimmer$superwall_release(shimmerView);
            paywallView.setupLoading$superwall_release(loadingView);
            paywallView.beforeViewCreated();
        }
        return paywall;
    }

    public final void buildWithCallback(Function1<? super PaywallView, Unit> onSuccess, Function1<? super Throwable, Unit> onError) {
        Intrinsics.checkNotNullParameter(onSuccess, "onSuccess");
        Intrinsics.checkNotNullParameter(onError, "onError");
        BuildersKt__Builders_commonKt.launch$default(new IOScope(null, 1, null), null, null, new PaywallBuilder$build$3(this, onSuccess, onError, null), 3, null);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.get_paywall.builder.PaywallBuilder$buildSync$1, reason: invalid class name */
    /* JADX INFO: compiled from: PaywallBuilder.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/paywall/view/PaywallView;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.get_paywall.builder.PaywallBuilder$buildSync$1", f = "PaywallBuilder.kt", i = {}, l = {132}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super PaywallView>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallBuilder.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super PaywallView> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object paywall;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Superwall companion = Superwall.INSTANCE.getInstance();
                String placement = PaywallBuilder.this.getPlacement();
                Map map = PaywallBuilder.this.params;
                PaywallOverrides paywallOverrides = PaywallBuilder.this.paywallOverrides;
                PaywallViewCallback paywallViewCallback = PaywallBuilder.this.delegate;
                Intrinsics.checkNotNull(paywallViewCallback);
                this.label = 1;
                paywall = PublicGetPaywallKt.getPaywall(companion, placement, map, paywallOverrides, paywallViewCallback, this);
                if (paywall == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                paywall = ((Result) obj).getValue();
            }
            PaywallBuilder paywallBuilder = PaywallBuilder.this;
            if (Result.m11248isSuccessimpl(paywall)) {
                PaywallView paywallView = (PaywallView) paywall;
                paywallView.setEncapsulatingActivity(new WeakReference<>(paywallBuilder.activity));
                ShimmerView shimmerView = paywallBuilder.shimmmerView;
                if (shimmerView == null) {
                    Activity activity = paywallBuilder.activity;
                    Intrinsics.checkNotNull(activity);
                    shimmerView = new ShimmerView(activity, null, 2, null);
                }
                LoadingView loadingView = paywallBuilder.purchaseLoadingView;
                if (loadingView == null) {
                    Activity activity2 = paywallBuilder.activity;
                    Intrinsics.checkNotNull(activity2);
                    loadingView = new LoadingView(activity2, null, 0, 0, 14, null);
                }
                paywallView.setupWith(shimmerView, loadingView);
                paywallView.setupShimmer$superwall_release(shimmerView);
                paywallView.setupLoading$superwall_release(loadingView);
                paywallView.beforeViewCreated();
                return paywallView;
            }
            ResultKt.throwOnFailure(paywall);
            return paywall;
        }
    }

    public final PaywallView buildSync() {
        return (PaywallView) BuildersKt__BuildersKt.runBlocking$default(null, new AnonymousClass1(null), 1, null);
    }
}
