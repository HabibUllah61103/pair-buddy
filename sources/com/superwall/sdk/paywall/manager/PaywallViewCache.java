package com.superwall.sdk.paywall.manager;

import android.app.Activity;
import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import com.reactcommunity.rndatetimepicker.RNConstants;
import com.superwall.sdk.misc.ActivityProvider;
import com.superwall.sdk.network.device.DeviceHelper;
import com.superwall.sdk.paywall.view.LoadingView;
import com.superwall.sdk.paywall.view.PaywallPurchaseLoadingView;
import com.superwall.sdk.paywall.view.PaywallShimmerView;
import com.superwall.sdk.paywall.view.PaywallView;
import com.superwall.sdk.paywall.view.ShimmerView;
import com.superwall.sdk.paywall.view.ViewStorage;
import expo.modules.notifications.service.NotificationsService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: PaywallViewCache.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001eJ\u001a\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u001f2\n\u0010,\u001a\u00060\u0010j\u0002`-J\u0006\u0010.\u001a\u00020/J\u0006\u00100\u001a\u000201J\u0010\u00102\u001a\u0004\u0018\u00010\u001f2\u0006\u00103\u001a\u00020\u0010J\u0012\u00104\u001a\u00020*2\n\u0010,\u001a\u00060\u0010j\u0002`-J\u0006\u00105\u001a\u00020*R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u00020\u00038BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R'\u0010\u0017\u001a\u0018\u0012\t\u0012\u00070\u0010¢\u0006\u0002\b\u0019\u0012\t\u0012\u00070\u001a¢\u0006\u0002\b\u00190\u0018¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR(\u0010!\u001a\u0004\u0018\u00010\u00102\b\u0010 \u001a\u0004\u0018\u00010\u00108F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u0013\u0010&\u001a\u0004\u0018\u00010\u001f8F¢\u0006\u0006\u001a\u0004\b'\u0010(¨\u00066"}, d2 = {"Lcom/superwall/sdk/paywall/manager/PaywallViewCache;", "", "appCtx", "Landroid/content/Context;", "store", "Lcom/superwall/sdk/paywall/view/ViewStorage;", "activityProvider", "Lcom/superwall/sdk/misc/ActivityProvider;", "deviceHelper", "Lcom/superwall/sdk/network/device/DeviceHelper;", "<init>", "(Landroid/content/Context;Lcom/superwall/sdk/paywall/view/ViewStorage;Lcom/superwall/sdk/misc/ActivityProvider;Lcom/superwall/sdk/network/device/DeviceHelper;)V", "ctx", "getCtx", "()Landroid/content/Context;", "_activePaywallVcKey", "", "loadingView", "Lcom/superwall/sdk/paywall/view/LoadingView;", "shimmerView", "Lcom/superwall/sdk/paywall/view/ShimmerView;", "singleThreadContext", "Lkotlinx/coroutines/CoroutineDispatcher;", "entries", "", "Lkotlin/jvm/internal/EnhancedNullability;", "Landroid/view/View;", "getEntries", "()Ljava/util/Map;", "getAllPaywallViews", "", "Lcom/superwall/sdk/paywall/view/PaywallView;", RNConstants.ARG_VALUE, "activePaywallVcKey", "getActivePaywallVcKey", "()Ljava/lang/String;", "setActivePaywallVcKey", "(Ljava/lang/String;)V", "activePaywallView", "getActivePaywallView", "()Lcom/superwall/sdk/paywall/view/PaywallView;", "save", "", "paywallView", NotificationsService.IDENTIFIER_KEY, "Lcom/superwall/sdk/models/paywall/PaywallIdentifier;", "acquireLoadingView", "Lcom/superwall/sdk/paywall/view/PaywallPurchaseLoadingView;", "acquireShimmerView", "Lcom/superwall/sdk/paywall/view/PaywallShimmerView;", "getPaywallView", "key", "removePaywallView", "removeAll", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PaywallViewCache {
    private String _activePaywallVcKey;
    private final ActivityProvider activityProvider;
    private final Context appCtx;
    private final DeviceHelper deviceHelper;
    private final Map<String, View> entries;
    private final LoadingView loadingView;
    private final ShimmerView shimmerView;
    private final CoroutineDispatcher singleThreadContext;
    private final ViewStorage store;

    public PaywallViewCache(Context appCtx, ViewStorage store, ActivityProvider activityProvider, DeviceHelper deviceHelper) {
        Intrinsics.checkNotNullParameter(appCtx, "appCtx");
        Intrinsics.checkNotNullParameter(store, "store");
        Intrinsics.checkNotNullParameter(activityProvider, "activityProvider");
        Intrinsics.checkNotNullParameter(deviceHelper, "deviceHelper");
        this.appCtx = appCtx;
        this.store = store;
        this.activityProvider = activityProvider;
        this.deviceHelper = deviceHelper;
        LoadingView loadingView = new LoadingView(getCtx(), null, 0, 0, 14, null);
        this.loadingView = loadingView;
        ShimmerView shimmerView = new ShimmerView(getCtx(), null, 2, null);
        this.shimmerView = shimmerView;
        store.storeView(LoadingView.TAG, loadingView);
        store.storeView(ShimmerView.TAG, shimmerView);
        this.singleThreadContext = Dispatchers.getIO();
        Set<Map.Entry<String, View>> setEntrySet = store.getViews().entrySet();
        Intrinsics.checkNotNullExpressionValue(setEntrySet, "<get-entries>(...)");
        Set<Map.Entry<String, View>> set = setEntrySet;
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(set, 10)), 16));
        Iterator<T> it = set.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Pair pair = TuplesKt.to(entry.getKey(), entry.getValue());
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        this.entries = linkedHashMap;
    }

    private final Context getCtx() {
        Activity currentActivity = this.activityProvider.getCurrentActivity();
        return currentActivity != null ? currentActivity : this.appCtx;
    }

    public final Map<String, View> getEntries() {
        return this.entries;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.manager.PaywallViewCache$getAllPaywallViews$1, reason: invalid class name */
    /* JADX INFO: compiled from: PaywallViewCache.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\r\u0012\t\u0012\u00070\u0002¢\u0006\u0002\b\u00030\u0001*\u00020\u0004H\n"}, d2 = {"<anonymous>", "", "Lcom/superwall/sdk/paywall/view/PaywallView;", "Lkotlin/internal/NoInfer;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.manager.PaywallViewCache$getAllPaywallViews$1", f = "PaywallViewCache.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends PaywallView>>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallViewCache.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super List<? extends PaywallView>> continuation) {
            return invoke2(coroutineScope, (Continuation<? super List<PaywallView>>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super List<PaywallView>> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                List<View> listAll = PaywallViewCache.this.store.all();
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : listAll) {
                    if (obj2 instanceof PaywallView) {
                        arrayList.add(obj2);
                    }
                }
                return CollectionsKt.toList(arrayList);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final List<PaywallView> getAllPaywallViews() {
        return (List) BuildersKt.runBlocking(this.singleThreadContext, new AnonymousClass1(null));
    }

    public final String getActivePaywallVcKey() {
        return (String) BuildersKt.runBlocking(this.singleThreadContext, new PaywallViewCache$activePaywallVcKey$1(this, null));
    }

    public final void setActivePaywallVcKey(String str) {
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(this.singleThreadContext), null, null, new PaywallViewCache$activePaywallVcKey$2(this, str, null), 3, null);
    }

    public final PaywallView getActivePaywallView() {
        return (PaywallView) BuildersKt.runBlocking(this.singleThreadContext, new PaywallViewCache$activePaywallView$1(this, null));
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.manager.PaywallViewCache$save$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallViewCache.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.manager.PaywallViewCache$save$1", f = "PaywallViewCache.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C05091 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $identifier;
        final /* synthetic */ PaywallView $paywallView;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05091(String str, PaywallView paywallView, Continuation<? super C05091> continuation) {
            super(2, continuation);
            this.$identifier = str;
            this.$paywallView = paywallView;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallViewCache.this.new C05091(this.$identifier, this.$paywallView, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05091) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            PaywallViewCache.this.store.storeView(PaywallCacheLogic.INSTANCE.key(this.$identifier, PaywallViewCache.this.deviceHelper.getLocale()), this.$paywallView);
            return Unit.INSTANCE;
        }
    }

    public final void save(PaywallView paywallView, String identifier) {
        Intrinsics.checkNotNullParameter(paywallView, "paywallView");
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(this.singleThreadContext), null, null, new C05091(identifier, paywallView, null), 3, null);
    }

    public final PaywallPurchaseLoadingView acquireLoadingView() {
        KeyEvent.Callback callbackRetrieveView = this.store.retrieveView(LoadingView.TAG);
        if (callbackRetrieveView != null) {
            return (PaywallPurchaseLoadingView) callbackRetrieveView;
        }
        LoadingView loadingView = new LoadingView(getCtx(), null, 0, 0, 14, null);
        this.store.storeView(LoadingView.TAG, loadingView);
        return loadingView;
    }

    public final PaywallShimmerView acquireShimmerView() {
        KeyEvent.Callback callbackRetrieveView = this.store.retrieveView(ShimmerView.TAG);
        if (callbackRetrieveView != null) {
            return (PaywallShimmerView) callbackRetrieveView;
        }
        ShimmerView shimmerView = new ShimmerView(getCtx(), null, 2, null);
        this.store.storeView(ShimmerView.TAG, shimmerView);
        return shimmerView;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.manager.PaywallViewCache$getPaywallView$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallViewCache.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/paywall/view/PaywallView;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.manager.PaywallViewCache$getPaywallView$1", f = "PaywallViewCache.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C05061 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super PaywallView>, Object> {
        final /* synthetic */ String $key;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05061(String str, Continuation<? super C05061> continuation) {
            super(2, continuation);
            this.$key = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallViewCache.this.new C05061(this.$key, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super PaywallView> continuation) {
            return ((C05061) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                try {
                    return (PaywallView) PaywallViewCache.this.store.retrieveView(this.$key);
                } catch (Throwable unused) {
                    return null;
                }
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final PaywallView getPaywallView(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (PaywallView) BuildersKt.runBlocking(this.singleThreadContext, new C05061(key, null));
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.manager.PaywallViewCache$removePaywallView$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallViewCache.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.manager.PaywallViewCache$removePaywallView$1", f = "PaywallViewCache.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C05081 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $identifier;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05081(String str, Continuation<? super C05081> continuation) {
            super(2, continuation);
            this.$identifier = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallViewCache.this.new C05081(this.$identifier, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05081) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            PaywallViewCache.this.store.removeView(PaywallCacheLogic.INSTANCE.key(this.$identifier, PaywallViewCache.this.deviceHelper.getLocale()));
            return Unit.INSTANCE;
        }
    }

    public final void removePaywallView(String identifier) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(this.singleThreadContext), null, null, new C05081(identifier, null), 3, null);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.manager.PaywallViewCache$removeAll$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallViewCache.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.manager.PaywallViewCache$removeAll$1", f = "PaywallViewCache.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C05071 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C05071(Continuation<? super C05071> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallViewCache.this.new C05071(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05071) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                Set<Map.Entry<String, View>> setEntrySet = PaywallViewCache.this.store.getViews().entrySet();
                Intrinsics.checkNotNullExpressionValue(setEntrySet, "<get-entries>(...)");
                PaywallViewCache paywallViewCache = PaywallViewCache.this;
                Iterator<T> it = setEntrySet.iterator();
                while (it.hasNext()) {
                    Object key = ((Map.Entry) it.next()).getKey();
                    Intrinsics.checkNotNullExpressionValue(key, "<get-key>(...)");
                    String str = (String) key;
                    if (!Intrinsics.areEqual(str, paywallViewCache._activePaywallVcKey)) {
                        paywallViewCache.store.removeView(str);
                    }
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final void removeAll() {
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(this.singleThreadContext), null, null, new C05071(null), 3, null);
    }
}
