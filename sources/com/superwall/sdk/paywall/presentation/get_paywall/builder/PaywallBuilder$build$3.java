package com.superwall.sdk.paywall.presentation.get_paywall.builder;

import android.app.Activity;
import androidx.appcompat.app.AppCompatDelegate;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.paywall.presentation.get_paywall.PublicGetPaywallKt;
import com.superwall.sdk.paywall.presentation.internal.request.PaywallOverrides;
import com.superwall.sdk.paywall.view.LoadingView;
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
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: compiled from: PaywallBuilder.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.paywall.presentation.get_paywall.builder.PaywallBuilder$build$3", f = "PaywallBuilder.kt", i = {}, l = {AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY}, m = "invokeSuspend", n = {}, s = {})
final class PaywallBuilder$build$3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function1<Throwable, Unit> $onError;
    final /* synthetic */ Function1<PaywallView, Unit> $onSuccess;
    int label;
    final /* synthetic */ PaywallBuilder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    PaywallBuilder$build$3(PaywallBuilder paywallBuilder, Function1<? super PaywallView, Unit> function1, Function1<? super Throwable, Unit> function2, Continuation<? super PaywallBuilder$build$3> continuation) {
        super(2, continuation);
        this.this$0 = paywallBuilder;
        this.$onSuccess = function1;
        this.$onError = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PaywallBuilder$build$3(this.this$0, this.$onSuccess, this.$onError, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((PaywallBuilder$build$3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object paywall;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Superwall companion = Superwall.INSTANCE.getInstance();
            String placement = this.this$0.getPlacement();
            Map map = this.this$0.params;
            PaywallOverrides paywallOverrides = this.this$0.paywallOverrides;
            PaywallViewCallback paywallViewCallback = this.this$0.delegate;
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
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.MainScope(), null, null, new AnonymousClass1(paywall, this.this$0, this.$onSuccess, this.$onError, null), 3, null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.get_paywall.builder.PaywallBuilder$build$3$1, reason: invalid class name */
    /* JADX INFO: compiled from: PaywallBuilder.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.get_paywall.builder.PaywallBuilder$build$3$1", f = "PaywallBuilder.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<Throwable, Unit> $onError;
        final /* synthetic */ Function1<PaywallView, Unit> $onSuccess;
        final /* synthetic */ Object $res;
        int label;
        final /* synthetic */ PaywallBuilder this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Object obj, PaywallBuilder paywallBuilder, Function1<? super PaywallView, Unit> function1, Function1<? super Throwable, Unit> function2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$res = obj;
            this.this$0 = paywallBuilder;
            this.$onSuccess = function1;
            this.$onError = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$res, this.this$0, this.$onSuccess, this.$onError, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            Object obj2 = this.$res;
            PaywallBuilder paywallBuilder = this.this$0;
            Function1<PaywallView, Unit> function1 = this.$onSuccess;
            if (Result.m11248isSuccessimpl(obj2)) {
                PaywallView paywallView = (PaywallView) obj2;
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
                function1.invoke(paywallView);
            }
            Function1<Throwable, Unit> function2 = this.$onError;
            Throwable thM11244exceptionOrNullimpl = Result.m11244exceptionOrNullimpl(obj2);
            if (thM11244exceptionOrNullimpl != null) {
                function2.invoke(thM11244exceptionOrNullimpl);
            }
            return Unit.INSTANCE;
        }
    }
}
