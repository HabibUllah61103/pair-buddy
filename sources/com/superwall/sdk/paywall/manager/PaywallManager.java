package com.superwall.sdk.paywall.manager;

import androidx.media3.extractor.ts.TsExtractor;
import com.superwall.sdk.dependencies.CacheFactory;
import com.superwall.sdk.dependencies.DeviceHelperFactory;
import com.superwall.sdk.dependencies.SuperwallScopeFactory;
import com.superwall.sdk.dependencies.ViewFactory;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.misc.EitherKt;
import com.superwall.sdk.misc.ScopesKt;
import com.superwall.sdk.models.paywall.Paywall;
import com.superwall.sdk.paywall.request.PaywallRequest;
import com.superwall.sdk.paywall.request.PaywallRequestManager;
import com.superwall.sdk.paywall.view.PaywallView;
import com.superwall.sdk.paywall.view.PaywallViewState;
import com.superwall.sdk.paywall.view.delegate.PaywallLoadingState;
import com.superwall.sdk.paywall.view.delegate.PaywallViewDelegateAdapter;
import expo.modules.notifications.service.NotificationsService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: PaywallManager.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001'B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\u0013\u001a\u00020\u000fH\u0002J\u0012\u0010\u0014\u001a\u00020\u00152\n\u0010\u0016\u001a\u00060\u0017j\u0002`\u0018J\u0006\u0010\u0019\u001a\u00020\u0015J<\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001c0\u001b2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020 2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0086@¢\u0006\u0002\u0010$J\r\u0010%\u001a\u00020\u0015H\u0000¢\u0006\u0002\b&R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u0004\u0018\u00010\t8FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u00020\u000f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012¨\u0006("}, d2 = {"Lcom/superwall/sdk/paywall/manager/PaywallManager;", "", "factory", "Lcom/superwall/sdk/paywall/manager/PaywallManager$Factory;", "paywallRequestManager", "Lcom/superwall/sdk/paywall/request/PaywallRequestManager;", "<init>", "(Lcom/superwall/sdk/paywall/manager/PaywallManager$Factory;Lcom/superwall/sdk/paywall/request/PaywallRequestManager;)V", "currentView", "Lcom/superwall/sdk/paywall/view/PaywallView;", "getCurrentView", "()Lcom/superwall/sdk/paywall/view/PaywallView;", "setCurrentView", "(Lcom/superwall/sdk/paywall/view/PaywallView;)V", "_cache", "Lcom/superwall/sdk/paywall/manager/PaywallViewCache;", "cache", "getCache", "()Lcom/superwall/sdk/paywall/manager/PaywallViewCache;", "createCache", "removePaywallView", "", NotificationsService.IDENTIFIER_KEY, "", "Lcom/superwall/sdk/models/paywall/PaywallIdentifier;", "resetCache", "getPaywallView", "Lcom/superwall/sdk/misc/Either;", "", "request", "Lcom/superwall/sdk/paywall/request/PaywallRequest;", "isForPresentation", "", "isPreloading", "delegate", "Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;", "(Lcom/superwall/sdk/paywall/request/PaywallRequest;ZZLcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "resetPaywallRequestCache", "resetPaywallRequestCache$superwall_release", "Factory", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PaywallManager {
    private PaywallViewCache _cache;
    private PaywallView currentView;
    private final Factory factory;
    private final PaywallRequestManager paywallRequestManager;

    /* JADX INFO: compiled from: PaywallManager.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004¨\u0006\u0005"}, d2 = {"Lcom/superwall/sdk/paywall/manager/PaywallManager$Factory;", "Lcom/superwall/sdk/dependencies/ViewFactory;", "Lcom/superwall/sdk/dependencies/CacheFactory;", "Lcom/superwall/sdk/dependencies/DeviceHelperFactory;", "Lcom/superwall/sdk/dependencies/SuperwallScopeFactory;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface Factory extends ViewFactory, CacheFactory, DeviceHelperFactory, SuperwallScopeFactory {
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.manager.PaywallManager$getPaywallView$1, reason: invalid class name */
    /* JADX INFO: compiled from: PaywallManager.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.manager.PaywallManager", f = "PaywallManager.kt", i = {0, 0, 0, 0, 0}, l = {69, 70}, m = "getPaywallView", n = {"this", "request", "delegate", "isForPresentation", "isPreloading"}, s = {"L$0", "L$1", "L$2", "Z$0", "Z$1"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        boolean Z$0;
        boolean Z$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PaywallManager.this.getPaywallView(null, false, false, null, this);
        }
    }

    public PaywallManager(Factory factory, PaywallRequestManager paywallRequestManager) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(paywallRequestManager, "paywallRequestManager");
        this.factory = factory;
        this.paywallRequestManager = paywallRequestManager;
    }

    public final void setCurrentView(PaywallView paywallView) {
        this.currentView = paywallView;
    }

    public final PaywallView getCurrentView() {
        return getCache().getActivePaywallView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PaywallViewCache getCache() {
        if (this._cache == null) {
            this._cache = createCache();
        }
        PaywallViewCache paywallViewCache = this._cache;
        Intrinsics.checkNotNull(paywallViewCache);
        return paywallViewCache;
    }

    private final PaywallViewCache createCache() {
        PaywallViewCache paywallViewCacheMakeCache = this.factory.makeCache();
        this._cache = paywallViewCacheMakeCache;
        return paywallViewCacheMakeCache;
    }

    public final void removePaywallView(String identifier) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        getCache().removePaywallView(identifier);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.manager.PaywallManager$resetCache$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.manager.PaywallManager$resetCache$1", f = "PaywallManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C05051 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C05051(Continuation<? super C05051> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallManager.this.new C05051(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05051) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                String activePaywallVcKey = PaywallManager.this.getCache().getActivePaywallVcKey();
                List<PaywallView> allPaywallViews = PaywallManager.this.getCache().getAllPaywallViews();
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : allPaywallViews) {
                    if (!Intrinsics.areEqual(((PaywallView) obj2).getState().getCacheKey(), activePaywallVcKey)) {
                        arrayList.add(obj2);
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((PaywallView) it.next()).destroyWebview$superwall_release();
                }
                PaywallManager.this.getCache().removeAll();
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final void resetCache() {
        ScopesKt.launchWithTracking(this.factory.mainScope(), new C05051(null));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    public final Object getPaywallView(PaywallRequest paywallRequest, boolean z, boolean z2, PaywallViewDelegateAdapter paywallViewDelegateAdapter, Continuation<? super Either<PaywallView, Throwable>> continuation) {
        AnonymousClass1 anonymousClass1;
        PaywallViewDelegateAdapter paywallViewDelegateAdapter2;
        PaywallManager paywallManager;
        PaywallRequest paywallRequest2;
        boolean z3;
        boolean z4;
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
        Object paywall = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(paywall);
            PaywallRequestManager paywallRequestManager = this.paywallRequestManager;
            anonymousClass1.L$0 = this;
            anonymousClass1.L$1 = paywallRequest;
            paywallViewDelegateAdapter2 = paywallViewDelegateAdapter;
            anonymousClass1.L$2 = paywallViewDelegateAdapter2;
            anonymousClass1.Z$0 = z;
            anonymousClass1.Z$1 = z2;
            anonymousClass1.label = 1;
            paywall = paywallRequestManager.getPaywall(paywallRequest, z2, anonymousClass1);
            if (paywall != coroutine_suspended) {
                paywallManager = this;
                paywallRequest2 = paywallRequest;
                z3 = z;
                z4 = z2;
            }
        }
        if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(paywall);
            return paywall;
        }
        boolean z5 = anonymousClass1.Z$1;
        boolean z6 = anonymousClass1.Z$0;
        paywallViewDelegateAdapter2 = (PaywallViewDelegateAdapter) anonymousClass1.L$2;
        PaywallRequest paywallRequest3 = (PaywallRequest) anonymousClass1.L$1;
        paywallManager = (PaywallManager) anonymousClass1.L$0;
        ResultKt.throwOnFailure(paywall);
        z4 = z5;
        z3 = z6;
        paywallRequest2 = paywallRequest3;
        AnonymousClass2 anonymousClass2 = paywallManager.new AnonymousClass2(paywallRequest2, paywallViewDelegateAdapter2, z3, z4, null);
        anonymousClass1.L$0 = null;
        anonymousClass1.L$1 = null;
        anonymousClass1.L$2 = null;
        anonymousClass1.label = 2;
        Object objMapAsync = EitherKt.mapAsync((Either) paywall, anonymousClass2, anonymousClass1);
        return objMapAsync == coroutine_suspended ? coroutine_suspended : objMapAsync;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.manager.PaywallManager$getPaywallView$2, reason: invalid class name */
    /* JADX INFO: compiled from: PaywallManager.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/paywall/view/PaywallView;", "it", "Lcom/superwall/sdk/models/paywall/Paywall;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.manager.PaywallManager$getPaywallView$2", f = "PaywallManager.kt", i = {0}, l = {TsExtractor.TS_STREAM_TYPE_DVBSUBS}, m = "invokeSuspend", n = {"it"}, s = {"L$0"})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<Paywall, Continuation<? super PaywallView>, Object> {
        final /* synthetic */ PaywallViewDelegateAdapter $delegate;
        final /* synthetic */ boolean $isForPresentation;
        final /* synthetic */ boolean $isPreloading;
        final /* synthetic */ PaywallRequest $request;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(PaywallRequest paywallRequest, PaywallViewDelegateAdapter paywallViewDelegateAdapter, boolean z, boolean z2, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$request = paywallRequest;
            this.$delegate = paywallViewDelegateAdapter;
            this.$isForPresentation = z;
            this.$isPreloading = z2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = PaywallManager.this.new AnonymousClass2(this.$request, this.$delegate, this.$isForPresentation, this.$isPreloading, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Paywall paywall, Continuation<? super PaywallView> continuation) {
            return ((AnonymousClass2) create(paywall, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Paywall paywall;
            PaywallView paywallView;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Paywall paywall2 = (Paywall) this.L$0;
                String strKey = PaywallCacheLogic.INSTANCE.key(paywall2.getIdentifier(), PaywallManager.this.factory.makeDeviceInfo().getLocale());
                if (!this.$request.isDebuggerLaunched() && (paywallView = PaywallManager.this.getCache().getPaywallView(strKey)) != null) {
                    boolean z = this.$isPreloading;
                    PaywallViewDelegateAdapter paywallViewDelegateAdapter = this.$delegate;
                    if (!z) {
                        paywallView.setCallback(paywallViewDelegateAdapter);
                        paywallView.updateState(new PaywallViewState.Updates.MergePaywall(paywall2));
                    }
                    return paywallView;
                }
                this.L$0 = paywall2;
                this.label = 1;
                Object objMakePaywallView = PaywallManager.this.factory.makePaywallView(paywall2, PaywallManager.this.getCache(), this.$delegate, this);
                if (objMakePaywallView == coroutine_suspended) {
                    return coroutine_suspended;
                }
                paywall = paywall2;
                obj = objMakePaywallView;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                paywall = (Paywall) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            PaywallView paywallView2 = (PaywallView) obj;
            PaywallManager.this.getCache().save(paywallView2, paywall.getIdentifier());
            if (this.$isForPresentation && (paywallView2.getLoadingState() instanceof PaywallLoadingState.Unknown)) {
                paywallView2.loadWebView();
            }
            return paywallView2;
        }
    }

    public final void resetPaywallRequestCache$superwall_release() {
        this.paywallRequestManager.resetCache$superwall_release();
    }
}
