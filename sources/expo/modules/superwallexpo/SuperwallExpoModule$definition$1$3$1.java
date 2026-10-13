package expo.modules.superwallexpo;

import android.app.Application;
import android.content.Context;
import android.net.Uri;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.config.options.PaywallOptions;
import com.superwall.sdk.config.options.SuperwallOptions;
import com.superwall.sdk.paywall.presentation.PaywallInfo;
import com.superwall.sdk.paywall.view.webview.PaywallResource;
import expo.modules.kotlin.Promise;
import expo.modules.kotlin.exception.CodedException;
import expo.modules.superwallexpo.bridges.PurchaseControllerBridge;
import expo.modules.superwallexpo.bridges.SuperwallDelegateBridge;
import expo.modules.superwallexpo.json.PaywallInfoKt;
import expo.modules.superwallexpo.json.SuperwallOptionsKt;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.future.FutureKt;

/* JADX INFO: compiled from: SuperwallExpoModule.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "expo.modules.superwallexpo.SuperwallExpoModule$definition$1$3$1", f = "SuperwallExpoModule.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class SuperwallExpoModule$definition$1$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $apiKey;
    final /* synthetic */ Map<String, Object> $options;
    final /* synthetic */ Promise $promise;
    final /* synthetic */ String $sdkVersion;
    final /* synthetic */ Boolean $usingPurchaseController;
    int label;
    final /* synthetic */ SuperwallExpoModule this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SuperwallExpoModule$definition$1$3$1(Map<String, ? extends Object> map, SuperwallExpoModule superwallExpoModule, Boolean bool, String str, String str2, Promise promise, Continuation<? super SuperwallExpoModule$definition$1$3$1> continuation) {
        super(2, continuation);
        this.$options = map;
        this.this$0 = superwallExpoModule;
        this.$usingPurchaseController = bool;
        this.$apiKey = str;
        this.$sdkVersion = str2;
        this.$promise = promise;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SuperwallExpoModule$definition$1$3$1(this.$options, this.this$0, this.$usingPurchaseController, this.$apiKey, this.$sdkVersion, this.$promise, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((SuperwallExpoModule$definition$1$3$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        SuperwallOptions superwallOptions;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        try {
            Map<String, Object> map = this.$options;
            if (map == null || (superwallOptions = SuperwallOptionsKt.superwallOptionsFromJson(map)) == null) {
                superwallOptions = new SuperwallOptions();
            }
            SuperwallOptions superwallOptions2 = superwallOptions;
            PaywallOptions paywalls = superwallOptions2.getPaywalls();
            final SuperwallExpoModule superwallExpoModule = this.this$0;
            paywalls.setOnBackPressed(new Function1<PaywallInfo, Boolean>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$1$3$1.1
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(PaywallInfo paywallInfo) {
                    Map<String, ? extends Object> mapEmptyMap;
                    superwallExpoModule.setBackPressedPromise(new CompletableFuture<>());
                    if (paywallInfo == null || (mapEmptyMap = MapsKt.mapOf(TuplesKt.to("paywallInfo", PaywallInfoKt.toJson(paywallInfo)))) == null) {
                        mapEmptyMap = MapsKt.emptyMap();
                    }
                    SuperwallExpoModule.INSTANCE.emitEvent("onBackPressed", mapEmptyMap);
                    return (Boolean) BuildersKt__BuildersKt.runBlocking$default(null, new C01341(superwallExpoModule, null), 1, null);
                }

                /* JADX INFO: renamed from: expo.modules.superwallexpo.SuperwallExpoModule$definition$1$3$1$1$1, reason: invalid class name and collision with other inner class name */
                /* JADX INFO: compiled from: SuperwallExpoModule.kt */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
                @DebugMetadata(c = "expo.modules.superwallexpo.SuperwallExpoModule$definition$1$3$1$1$1", f = "SuperwallExpoModule.kt", i = {}, l = {177}, m = "invokeSuspend", n = {}, s = {})
                static final class C01341 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
                    int label;
                    final /* synthetic */ SuperwallExpoModule this$0;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C01341(SuperwallExpoModule superwallExpoModule, Continuation<? super C01341> continuation) {
                        super(2, continuation);
                        this.this$0 = superwallExpoModule;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new C01341(this.this$0, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
                        return ((C01341) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    /* JADX WARN: Code duplicated, block: B:16:0x0039  */
                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) throws Throwable {
                        boolean zBooleanValue;
                        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        int i = this.label;
                        if (i == 0) {
                            ResultKt.throwOnFailure(obj);
                            CompletableFuture<Boolean> backPressedPromise = this.this$0.getBackPressedPromise();
                            if (backPressedPromise != null) {
                                this.label = 1;
                                obj = FutureKt.await(backPressedPromise, this);
                                if (obj == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                            } else {
                                zBooleanValue = false;
                            }
                            return Boxing.boxBoolean(zBooleanValue);
                        }
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                        Boolean bool = (Boolean) obj;
                        if (bool != null) {
                            zBooleanValue = bool.booleanValue();
                        } else {
                            zBooleanValue = false;
                        }
                        return Boxing.boxBoolean(zBooleanValue);
                    }
                }
            });
            Map<String, Object> map2 = this.$options;
            Object obj2 = map2 != null ? map2.get("localResources") : null;
            final Map map3 = obj2 instanceof Map ? (Map) obj2 : null;
            Superwall.Companion companion = Superwall.INSTANCE;
            Context reactContext = this.this$0.getAppContext().getReactContext();
            Context applicationContext = reactContext != null ? reactContext.getApplicationContext() : null;
            Intrinsics.checkNotNull(applicationContext, "null cannot be cast to non-null type android.app.Application");
            Application application = (Application) applicationContext;
            PurchaseControllerBridge purchaseController = Intrinsics.areEqual(this.$usingPurchaseController, Boxing.boxBoolean(true)) ? this.this$0.getPurchaseController() : null;
            ExpoActivityProvider expoActivityProvider = new ExpoActivityProvider(this.this$0.getAppContext());
            final String str = this.$sdkVersion;
            final Promise promise = this.$promise;
            companion.configure(application, this.$apiKey, purchaseController, superwallOptions2, expoActivityProvider, new Function1<Result<? extends Unit>, Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$1$3$1.2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                    m11080invoke(result.getValue());
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m11080invoke(Object obj3) {
                    Superwall companion2 = Superwall.INSTANCE.getInstance();
                    String str2 = str;
                    if (str2 == null) {
                        str2 = "0.0.0";
                    }
                    companion2.setPlatformWrapper("Expo", str2);
                    Superwall.INSTANCE.getInstance().setDelegate(new SuperwallDelegateBridge());
                    if (map3 != null) {
                        Superwall companion3 = Superwall.INSTANCE.getInstance();
                        Map<String, String> map4 = map3;
                        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(map4.size()));
                        Iterator<T> it = map4.entrySet().iterator();
                        while (it.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            Object key = entry.getKey();
                            Uri uri = Uri.parse((String) entry.getValue());
                            Intrinsics.checkNotNullExpressionValue(uri, "parse(...)");
                            linkedHashMap.put(key, new PaywallResource.FromUri(uri));
                        }
                        companion3.setLocalResources(linkedHashMap);
                    }
                    if (atomicBoolean.compareAndSet(false, true)) {
                        promise.resolve(true);
                    }
                }
            });
        } catch (Throwable th) {
            th.printStackTrace();
            if (atomicBoolean.compareAndSet(false, true)) {
                BuildersKt__Builders_commonKt.launch$default(this.this$0.getScope(), null, null, new AnonymousClass3(this.$promise, th, null), 3, null);
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: expo.modules.superwallexpo.SuperwallExpoModule$definition$1$3$1$3, reason: invalid class name */
    /* JADX INFO: compiled from: SuperwallExpoModule.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "expo.modules.superwallexpo.SuperwallExpoModule$definition$1$3$1$3", f = "SuperwallExpoModule.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Throwable $error;
        final /* synthetic */ Promise $promise;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(Promise promise, Throwable th, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.$promise = promise;
            this.$error = th;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass3(this.$promise, this.$error, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.$promise.reject(new CodedException(this.$error));
            return Unit.INSTANCE;
        }
    }
}
