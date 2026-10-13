package com.superwall.sdk.config;

import android.content.Context;
import com.superwall.sdk.analytics.internal.trackable.TrackableSuperwallEvent;
import com.superwall.sdk.config.models.ConfigState;
import com.superwall.sdk.config.options.SuperwallOptions;
import com.superwall.sdk.identity.IdentityManager;
import com.superwall.sdk.misc.primitives.BaseContext;
import com.superwall.sdk.misc.primitives.Reducer;
import com.superwall.sdk.misc.primitives.TypedAction;
import com.superwall.sdk.models.config.Config;
import com.superwall.sdk.models.entitlements.SubscriptionStatus;
import com.superwall.sdk.models.triggers.Trigger;
import com.superwall.sdk.network.SuperwallAPI;
import com.superwall.sdk.network.device.DeviceHelper;
import com.superwall.sdk.paywall.manager.PaywallManager;
import com.superwall.sdk.storage.Storable;
import com.superwall.sdk.store.Entitlements;
import com.superwall.sdk.store.StoreManager;
import com.superwall.sdk.store.testmode.TestMode;
import com.superwall.sdk.web.WebPaywallRedeemer;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: compiled from: ConfigContext.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000¼\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001J\u001c\u0010K\u001a\u00020:2\u0012\u0010L\u001a\u000e\u0012\u0004\u0012\u00020N\u0012\u0004\u0012\u00020O0MH&R\u0012\u0010\u0003\u001a\u00020\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0012\u0010\u0007\u001a\u00020\bX¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0012\u0010\u000b\u001a\u00020\fX¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0012\u0010\u000f\u001a\u00020\u0010X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0012\u0010\u0013\u001a\u00020\u0014X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0012\u0010\u0017\u001a\u00020\u0018X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u0012\u0010\u001b\u001a\u00020\u001cX¦\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u0018\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020!0 X¦\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#R\u0012\u0010$\u001a\u00020%X¦\u0004¢\u0006\u0006\u001a\u0004\b&\u0010'R\u0012\u0010(\u001a\u00020)X¦\u0004¢\u0006\u0006\u001a\u0004\b*\u0010+R\u0012\u0010,\u001a\u00020-X¦\u0004¢\u0006\u0006\u001a\u0004\b.\u0010/R\u0014\u00100\u001a\u0004\u0018\u000101X¦\u0004¢\u0006\u0006\u001a\u0004\b2\u00103R\u001a\u00104\u001a\n\u0012\u0004\u0012\u000205\u0018\u00010 X¦\u0004¢\u0006\u0006\u001a\u0004\b6\u0010#R \u00107\u001a\u0010\u0012\u0004\u0012\u000209\u0012\u0004\u0012\u00020:\u0018\u000108X¦\u0004¢\u0006\u0006\u001a\u0004\b;\u0010<R(\u0010=\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020:0>\u0012\u0006\u0012\u0004\u0018\u00010?08X¦\u0004¢\u0006\u0006\u001a\u0004\b@\u0010<RR\u0010A\u001aB\b\u0001\u0012\u0013\u0012\u00110C¢\u0006\f\bD\u0012\b\bE\u0012\u0004\b\b(F\u0012\u0013\u0012\u00110G¢\u0006\f\bD\u0012\b\bE\u0012\u0004\b\b(H\u0012\n\u0012\b\u0012\u0004\u0012\u00020:0>\u0012\u0006\u0012\u0004\u0018\u00010?0BX¦\u0004¢\u0006\u0006\u001a\u0004\bI\u0010J¨\u0006P"}, d2 = {"Lcom/superwall/sdk/config/ConfigContext;", "Lcom/superwall/sdk/misc/primitives/BaseContext;", "Lcom/superwall/sdk/config/models/ConfigState;", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "storeManager", "Lcom/superwall/sdk/store/StoreManager;", "getStoreManager", "()Lcom/superwall/sdk/store/StoreManager;", "entitlements", "Lcom/superwall/sdk/store/Entitlements;", "getEntitlements", "()Lcom/superwall/sdk/store/Entitlements;", "network", "Lcom/superwall/sdk/network/SuperwallAPI;", "getNetwork", "()Lcom/superwall/sdk/network/SuperwallAPI;", "deviceHelper", "Lcom/superwall/sdk/network/device/DeviceHelper;", "getDeviceHelper", "()Lcom/superwall/sdk/network/device/DeviceHelper;", "options", "Lcom/superwall/sdk/config/options/SuperwallOptions;", "getOptions", "()Lcom/superwall/sdk/config/options/SuperwallOptions;", "paywallManager", "Lcom/superwall/sdk/paywall/manager/PaywallManager;", "getPaywallManager", "()Lcom/superwall/sdk/paywall/manager/PaywallManager;", "webPaywallRedeemer", "Lkotlin/Function0;", "Lcom/superwall/sdk/web/WebPaywallRedeemer;", "getWebPaywallRedeemer", "()Lkotlin/jvm/functions/Function0;", "factory", "Lcom/superwall/sdk/config/ConfigManager$Factory;", "getFactory", "()Lcom/superwall/sdk/config/ConfigManager$Factory;", "assignments", "Lcom/superwall/sdk/config/Assignments;", "getAssignments", "()Lcom/superwall/sdk/config/Assignments;", "paywallPreload", "Lcom/superwall/sdk/config/PaywallPreload;", "getPaywallPreload", "()Lcom/superwall/sdk/config/PaywallPreload;", "testMode", "Lcom/superwall/sdk/store/testmode/TestMode;", "getTestMode", "()Lcom/superwall/sdk/store/testmode/TestMode;", "identityManager", "Lcom/superwall/sdk/identity/IdentityManager;", "getIdentityManager", "setSubscriptionStatus", "Lkotlin/Function1;", "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;", "", "getSetSubscriptionStatus", "()Lkotlin/jvm/functions/Function1;", "awaitUtilNetwork", "Lkotlin/coroutines/Continuation;", "", "getAwaitUtilNetwork", "activateTestMode", "Lkotlin/Function3;", "Lcom/superwall/sdk/models/config/Config;", "Lkotlin/ParameterName;", "name", "config", "", "justActivated", "getActivateTestMode", "()Lkotlin/jvm/functions/Function3;", "setTriggers", "triggers", "", "", "Lcom/superwall/sdk/models/triggers/Trigger;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface ConfigContext extends BaseContext<ConfigState, ConfigContext> {
    Function3<Config, Boolean, Continuation<? super Unit>, Object> getActivateTestMode();

    Assignments getAssignments();

    Function1<Continuation<? super Unit>, Object> getAwaitUtilNetwork();

    Context getContext();

    DeviceHelper getDeviceHelper();

    Entitlements getEntitlements();

    ConfigManager.Factory getFactory();

    Function0<IdentityManager> getIdentityManager();

    SuperwallAPI getNetwork();

    SuperwallOptions getOptions();

    PaywallManager getPaywallManager();

    PaywallPreload getPaywallPreload();

    Function1<SubscriptionStatus, Unit> getSetSubscriptionStatus();

    StoreManager getStoreManager();

    TestMode getTestMode();

    Function0<WebPaywallRedeemer> getWebPaywallRedeemer();

    void setTriggers(Map<String, Trigger> triggers);

    /* JADX INFO: compiled from: ConfigContext.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public static final class DefaultImpls {
        public static void delete(ConfigContext configContext, Storable<?> storable) {
            Intrinsics.checkNotNullParameter(storable, "storable");
            BaseContext.DefaultImpls.delete(configContext, storable);
        }

        public static void effect(ConfigContext configContext, TypedAction<ConfigContext> action) {
            Intrinsics.checkNotNullParameter(action, "action");
            BaseContext.DefaultImpls.effect(configContext, action);
        }

        public static StateFlow<ConfigState> getState(ConfigContext configContext) {
            return BaseContext.DefaultImpls.getState(configContext);
        }

        public static Object immediate(ConfigContext configContext, TypedAction<ConfigContext> typedAction, Continuation<? super Unit> continuation) {
            Object objImmediate = BaseContext.DefaultImpls.immediate(configContext, typedAction, continuation);
            return objImmediate == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objImmediate : Unit.INSTANCE;
        }

        public static Object immediateUntil(ConfigContext configContext, TypedAction<ConfigContext> typedAction, Function1<? super ConfigState, Boolean> function1, Continuation<? super Unit> continuation) {
            Object objImmediateUntil = BaseContext.DefaultImpls.immediateUntil(configContext, typedAction, function1, continuation);
            return objImmediateUntil == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objImmediateUntil : Unit.INSTANCE;
        }

        public static <T> void persist(ConfigContext configContext, Storable<T> storable, T value) {
            Intrinsics.checkNotNullParameter(storable, "storable");
            Intrinsics.checkNotNullParameter(value, "value");
            BaseContext.DefaultImpls.persist(configContext, storable, value);
        }

        /* JADX INFO: renamed from: read-IoAF18A, reason: not valid java name */
        public static <T> Object m10583readIoAF18A(ConfigContext configContext, Storable<T> storable) {
            Intrinsics.checkNotNullParameter(storable, "storable");
            return BaseContext.DefaultImpls.m10630readIoAF18A(configContext, storable);
        }

        public static void sideEffect(ConfigContext configContext, Function1<? super Continuation<? super Unit>, ? extends Object> what) {
            Intrinsics.checkNotNullParameter(what, "what");
            BaseContext.DefaultImpls.sideEffect(configContext, what);
        }

        public static void track(ConfigContext configContext, TrackableSuperwallEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            BaseContext.DefaultImpls.track(configContext, event);
        }

        public static void update(ConfigContext configContext, Reducer<ConfigState> reducer) {
            Intrinsics.checkNotNullParameter(reducer, "reducer");
            BaseContext.DefaultImpls.update(configContext, reducer);
        }
    }
}
