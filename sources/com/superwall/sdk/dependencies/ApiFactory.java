package com.superwall.sdk.dependencies;

import androidx.core.app.NotificationCompat;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.analytics.internal.TrackingKt;
import com.superwall.sdk.analytics.internal.trackable.Trackable;
import com.superwall.sdk.config.ConfigManager;
import com.superwall.sdk.identity.IdentityManager;
import com.superwall.sdk.misc.AppLifecycleObserver;
import com.superwall.sdk.network.Api;
import com.superwall.sdk.network.JsonFactory;
import com.superwall.sdk.network.device.DeviceHelper;
import com.superwall.sdk.storage.LocalStorage;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.serialization.json.Json;

/* JADX INFO: compiled from: FactoryProtocols.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0016\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)H\u0096@¢\u0006\u0002\u0010*J*\u0010+\u001a\u000e\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020-0,2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020-H¦@¢\u0006\u0002\u00101R\u0018\u0010\u0002\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u0018\u0010\b\u001a\u00020\tX¦\u000e¢\u0006\f\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0018\u0010\u000e\u001a\u00020\u000fX¦\u000e¢\u0006\f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0014\u001a\u00020\u0015X¦\u000e¢\u0006\f\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001a\u001a\u00020\u001bX¦\u000e¢\u0006\f\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0018\u0010 \u001a\u00020!X¦\u000e¢\u0006\f\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u00062"}, d2 = {"Lcom/superwall/sdk/dependencies/ApiFactory;", "Lcom/superwall/sdk/network/JsonFactory;", "api", "Lcom/superwall/sdk/network/Api;", "getApi", "()Lcom/superwall/sdk/network/Api;", "setApi", "(Lcom/superwall/sdk/network/Api;)V", "storage", "Lcom/superwall/sdk/storage/LocalStorage;", "getStorage", "()Lcom/superwall/sdk/storage/LocalStorage;", "setStorage", "(Lcom/superwall/sdk/storage/LocalStorage;)V", "deviceHelper", "Lcom/superwall/sdk/network/device/DeviceHelper;", "getDeviceHelper", "()Lcom/superwall/sdk/network/device/DeviceHelper;", "setDeviceHelper", "(Lcom/superwall/sdk/network/device/DeviceHelper;)V", "configManager", "Lcom/superwall/sdk/config/ConfigManager;", "getConfigManager", "()Lcom/superwall/sdk/config/ConfigManager;", "setConfigManager", "(Lcom/superwall/sdk/config/ConfigManager;)V", "identityManager", "Lcom/superwall/sdk/identity/IdentityManager;", "getIdentityManager", "()Lcom/superwall/sdk/identity/IdentityManager;", "setIdentityManager", "(Lcom/superwall/sdk/identity/IdentityManager;)V", "appLifecycleObserver", "Lcom/superwall/sdk/misc/AppLifecycleObserver;", "getAppLifecycleObserver", "()Lcom/superwall/sdk/misc/AppLifecycleObserver;", "setAppLifecycleObserver", "(Lcom/superwall/sdk/misc/AppLifecycleObserver;)V", "track", "", NotificationCompat.CATEGORY_EVENT, "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;", "(Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "makeHeaders", "", "", "isForDebugging", "", "requestId", "(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface ApiFactory extends JsonFactory {

    /* JADX INFO: renamed from: com.superwall.sdk.dependencies.ApiFactory$track$1, reason: invalid class name */
    /* JADX INFO: compiled from: FactoryProtocols.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.dependencies.ApiFactory$DefaultImpls", f = "FactoryProtocols.kt", i = {}, l = {65}, m = "track", n = {}, s = {})
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
            return DefaultImpls.track(null, null, this);
        }
    }

    Api getApi();

    AppLifecycleObserver getAppLifecycleObserver();

    ConfigManager getConfigManager();

    DeviceHelper getDeviceHelper();

    IdentityManager getIdentityManager();

    LocalStorage getStorage();

    Object makeHeaders(boolean z, String str, Continuation<? super Map<String, String>> continuation);

    void setApi(Api api);

    void setAppLifecycleObserver(AppLifecycleObserver appLifecycleObserver);

    void setConfigManager(ConfigManager configManager);

    void setDeviceHelper(DeviceHelper deviceHelper);

    void setIdentityManager(IdentityManager identityManager);

    void setStorage(LocalStorage localStorage);

    Object track(Trackable trackable, Continuation<? super Unit> continuation);

    /* JADX INFO: compiled from: FactoryProtocols.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public static final class DefaultImpls {
        public static Json json(ApiFactory apiFactory) {
            return JsonFactory.DefaultImpls.json(apiFactory);
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0014  */
        public static Object track(ApiFactory apiFactory, Trackable trackable, Continuation<? super Unit> continuation) {
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
            Object obj = anonymousClass1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = anonymousClass1.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Superwall companion = Superwall.INSTANCE.getInstance();
                anonymousClass1.label = 1;
                if (TrackingKt.track(companion, trackable, anonymousClass1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                ((Result) obj).getValue();
            }
            return Unit.INSTANCE;
        }
    }
}
