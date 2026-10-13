package com.superwall.sdk.dependencies;

import android.content.Context;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.config.options.PaywallOptions;
import com.superwall.sdk.network.device.DeviceHelper;
import com.superwall.sdk.paywall.manager.PaywallViewCache;
import com.superwall.sdk.paywall.view.PaywallView;
import com.superwall.sdk.paywall.view.delegate.PaywallViewDelegateAdapter;
import com.superwall.sdk.paywall.view.webview.SWWebView;
import com.superwall.sdk.paywall.view.webview.messaging.PaywallMessageHandler;
import com.superwall.sdk.storage.LocalStorage;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: DependencyContainer.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/paywall/view/PaywallView;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.superwall.sdk.dependencies.DependencyContainer$makePaywallView$paywallView$1", f = "DependencyContainer.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class DependencyContainer$makePaywallView$paywallView$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super PaywallView>, Object> {
    final /* synthetic */ PaywallViewCache $cache;
    final /* synthetic */ PaywallView.PaywallController $controller;
    final /* synthetic */ PaywallViewDelegateAdapter $delegate;
    final /* synthetic */ PaywallMessageHandler $messageHandler;
    int label;
    final /* synthetic */ DependencyContainer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DependencyContainer$makePaywallView$paywallView$1(DependencyContainer dependencyContainer, PaywallMessageHandler paywallMessageHandler, PaywallViewDelegateAdapter paywallViewDelegateAdapter, PaywallViewCache paywallViewCache, PaywallView.PaywallController paywallController, Continuation<? super DependencyContainer$makePaywallView$paywallView$1> continuation) {
        super(2, continuation);
        this.this$0 = dependencyContainer;
        this.$messageHandler = paywallMessageHandler;
        this.$delegate = paywallViewDelegateAdapter;
        this.$cache = paywallViewCache;
        this.$controller = paywallController;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DependencyContainer$makePaywallView$paywallView$1(this.this$0, this.$messageHandler, this.$delegate, this.$cache, this.$controller, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super PaywallView> continuation) {
        return ((DependencyContainer$makePaywallView$paywallView$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        Context context = this.this$0.getContext();
        PaywallMessageHandler paywallMessageHandler = this.$messageHandler;
        final DependencyContainer dependencyContainer = this.this$0;
        SWWebView sWWebView = new SWWebView(context, paywallMessageHandler, null, new Function0() { // from class: com.superwall.sdk.dependencies.DependencyContainer$makePaywallView$paywallView$1$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DependencyContainer$makePaywallView$paywallView$1.invokeSuspend$lambda$0(dependencyContainer);
            }
        }, null, 20, null);
        Context context2 = this.this$0.getContext();
        DeviceHelper deviceHelper = this.this$0.getDeviceHelper();
        LocalStorage storage = this.this$0.getStorage();
        PaywallView paywallView = new PaywallView(context2, Superwall.INSTANCE.getInstance(), this.$delegate, deviceHelper, this.this$0, storage, sWWebView, this.$cache, this.$controller, this.$messageHandler, this.this$0.getReedemer());
        sWWebView.setDelegate(paywallView);
        this.$messageHandler.setMessageHandler(paywallView);
        return paywallView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PaywallOptions invokeSuspend$lambda$0(DependencyContainer dependencyContainer) {
        return dependencyContainer.makeSuperwallOptions().getPaywalls();
    }
}
