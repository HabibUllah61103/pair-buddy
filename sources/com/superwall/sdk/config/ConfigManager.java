package com.superwall.sdk.config;

import android.content.Context;
import androidx.media3.extractor.ts.TsExtractor;
import com.reactcommunity.rndatetimepicker.RNConstants;
import com.superwall.sdk.analytics.internal.trackable.TrackableSuperwallEvent;
import com.superwall.sdk.config.models.ConfigState;
import com.superwall.sdk.config.models.ConfigStateKt;
import com.superwall.sdk.config.options.SuperwallOptions;
import com.superwall.sdk.dependencies.DeviceHelperFactory;
import com.superwall.sdk.dependencies.DeviceInfoFactory;
import com.superwall.sdk.dependencies.HasExternalPurchaseControllerFactory;
import com.superwall.sdk.dependencies.RequestFactory;
import com.superwall.sdk.dependencies.RuleAttributesFactory;
import com.superwall.sdk.dependencies.StoreTransactionFactory;
import com.superwall.sdk.identity.IdentityManager;
import com.superwall.sdk.identity.Keys;
import com.superwall.sdk.misc.IOScope;
import com.superwall.sdk.misc.primitives.Reducer;
import com.superwall.sdk.misc.primitives.StateActor;
import com.superwall.sdk.misc.primitives.TypedAction;
import com.superwall.sdk.models.config.Config;
import com.superwall.sdk.models.entitlements.SubscriptionStatus;
import com.superwall.sdk.models.triggers.Experiment;
import com.superwall.sdk.models.triggers.Trigger;
import com.superwall.sdk.network.AwaitUntilNetworkExistsKt;
import com.superwall.sdk.network.SuperwallAPI;
import com.superwall.sdk.network.device.DeviceHelper;
import com.superwall.sdk.paywall.manager.PaywallManager;
import com.superwall.sdk.storage.Storable;
import com.superwall.sdk.storage.Storage;
import com.superwall.sdk.store.Entitlements;
import com.superwall.sdk.store.StoreManager;
import com.superwall.sdk.store.testmode.TestMode;
import com.superwall.sdk.web.WebPaywallRedeemer;
import expo.modules.interfaces.permissions.PermissionsResponse;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: compiled from: ConfigManager.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000æ\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b,\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\"\n\u0002\b\f\b\u0016\u0018\u00002\u00020\u0001:\u0002\u0093\u0001B¯\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u0012\u0006\u0010\u0017\u001a\u00020\u0018\u0012\u0006\u0010\u0019\u001a\u00020\u001a\u0012\u0006\u0010\u001b\u001a\u00020\u001c\u0012\"\u0010\u001d\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u001f\u0012\n\u0012\b\u0012\u0004\u0012\u00020!0 \u0012\u0006\u0012\u0004\u0018\u00010\"0\u001e\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010$\u0012\u0010\b\u0002\u0010%\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010\u0013\u0012\u0016\b\u0002\u0010'\u001a\u0010\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020!\u0018\u00010(\u0012\u001e\b\u0002\u0010*\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020!0 \u0012\u0006\u0012\u0004\u0018\u00010\"0(\u0012*\b\u0002\u0010+\u001a$\b\u0001\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020.\u0012\n\u0012\b\u0012\u0004\u0012\u00020!0 \u0012\u0006\u0012\u0004\u0018\u00010\"0,\u0012\u0012\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020100¢\u0006\u0004\b2\u00103J\u001c\u0010w\u001a\u00020!2\u0012\u0010x\u001a\u000e\u0012\u0004\u0012\u00020n\u0012\u0004\u0012\u00020o0qH\u0016J\u000e\u0010}\u001a\u00020!H\u0086@¢\u0006\u0002\u0010~J\u0006\u0010\u007f\u001a\u00020!J6\u0010\u0080\u0001\u001a\u00020!2\n\b\u0002\u0010e\u001a\u0004\u0018\u00010-2\u000b\b\u0002\u0010\u0081\u0001\u001a\u0004\u0018\u00010n2\u000b\b\u0002\u0010\u0082\u0001\u001a\u0004\u0018\u00010nH\u0086@¢\u0006\u0003\u0010\u0083\u0001J\u000e\u0010J\u001a\u00020!H\u0086@¢\u0006\u0002\u0010~J\u000f\u0010\u0084\u0001\u001a\u00020!H\u0086@¢\u0006\u0002\u0010~J\u000f\u0010\u0085\u0001\u001a\u00020!H\u0086@¢\u0006\u0002\u0010~J \u0010\u0086\u0001\u001a\u00020!2\u000e\u0010\u0087\u0001\u001a\t\u0012\u0004\u0012\u00020n0\u0088\u0001H\u0086@¢\u0006\u0003\u0010\u0089\u0001J\u001e\u0010\u008a\u0001\u001a\u00020!2\t\b\u0002\u0010\u008b\u0001\u001a\u00020.H\u0080@¢\u0006\u0006\b\u008c\u0001\u0010\u008d\u0001J\u0017\u0010\u008e\u0001\u001a\u00020!2\u0006\u0010e\u001a\u00020-H\u0000¢\u0006\u0003\b\u008f\u0001J\u0018\u0010\u0090\u0001\u001a\u00020!2\u0007\u0010\u0091\u0001\u001a\u000201H\u0000¢\u0006\u0003\b\u0092\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b4\u00105R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b6\u00107R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b8\u00109R\u0014\u0010\b\u001a\u00020\tX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b:\u0010;R\u0014\u0010\n\u001a\u00020\u000bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b<\u0010=R\u0014\u0010\f\u001a\u00020\rX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b>\u0010?R\u001a\u0010\u000e\u001a\u00020\u000fX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR\u0014\u0010\u0010\u001a\u00020\u0011X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\bD\u0010ER\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\bF\u0010GR\u0014\u0010\u0015\u001a\u00020\u0016X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\bH\u0010IR\u0014\u0010\u0017\u001a\u00020\u0018X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\bJ\u0010KR\u0014\u0010\u0019\u001a\u00020\u001aX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\bL\u0010MR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R2\u0010\u001d\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u001f\u0012\n\u0012\b\u0012\u0004\u0012\u00020!0 \u0012\u0006\u0012\u0004\u0018\u00010\"0\u001eX\u0096\u0004¢\u0006\n\n\u0002\u0010P\u001a\u0004\bN\u0010OR\u0016\u0010#\u001a\u0004\u0018\u00010$X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\bQ\u0010RR\u001c\u0010%\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010\u0013X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\bS\u0010GR\"\u0010'\u001a\u0010\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020!\u0018\u00010(X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\bT\u0010UR,\u0010*\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020!0 \u0012\u0006\u0012\u0004\u0018\u00010\"0(X\u0096\u0004¢\u0006\n\n\u0002\u0010W\u001a\u0004\bV\u0010UR8\u0010+\u001a$\b\u0001\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020.\u0012\n\u0012\b\u0012\u0004\u0012\u00020!0 \u0012\u0006\u0012\u0004\u0018\u00010\"0,X\u0096\u0004¢\u0006\n\n\u0002\u0010Z\u001a\u0004\bX\u0010YR \u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020100X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b[\u0010\\R\u0014\u0010]\u001a\u00020^8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b_\u0010`R\u001a\u0010a\u001a\b\u0012\u0004\u0012\u0002010b8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bc\u0010dR\u0013\u0010e\u001a\u0004\u0018\u00010-8F¢\u0006\u0006\u001a\u0004\bf\u0010gR\u0017\u0010h\u001a\b\u0012\u0004\u0012\u00020-0i¢\u0006\b\n\u0000\u001a\u0004\bj\u0010kR\u001a\u0010l\u001a\u000e\u0012\u0004\u0012\u00020n\u0012\u0004\u0012\u00020o0mX\u0082\u000e¢\u0006\u0002\n\u0000R<\u0010r\u001a\u000e\u0012\u0004\u0012\u00020n\u0012\u0004\u0012\u00020o0q2\u0012\u0010p\u001a\u000e\u0012\u0004\u0012\u00020n\u0012\u0004\u0012\u00020o0q8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bs\u0010t\"\u0004\bu\u0010vR!\u0010y\u001a\u0012\u0012\b\u0012\u00060nj\u0002`z\u0012\u0004\u0012\u00020{0q8F¢\u0006\u0006\u001a\u0004\b|\u0010t¨\u0006\u0094\u0001"}, d2 = {"Lcom/superwall/sdk/config/ConfigManager;", "Lcom/superwall/sdk/config/ConfigContext;", "context", "Landroid/content/Context;", "storeManager", "Lcom/superwall/sdk/store/StoreManager;", "entitlements", "Lcom/superwall/sdk/store/Entitlements;", "storage", "Lcom/superwall/sdk/storage/Storage;", "network", "Lcom/superwall/sdk/network/SuperwallAPI;", "deviceHelper", "Lcom/superwall/sdk/network/device/DeviceHelper;", "options", "Lcom/superwall/sdk/config/options/SuperwallOptions;", "paywallManager", "Lcom/superwall/sdk/paywall/manager/PaywallManager;", "webPaywallRedeemer", "Lkotlin/Function0;", "Lcom/superwall/sdk/web/WebPaywallRedeemer;", "factory", "Lcom/superwall/sdk/config/ConfigManager$Factory;", "assignments", "Lcom/superwall/sdk/config/Assignments;", "paywallPreload", "Lcom/superwall/sdk/config/PaywallPreload;", "ioScope", "Lcom/superwall/sdk/misc/IOScope;", "tracker", "Lkotlin/Function2;", "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;", "Lkotlin/coroutines/Continuation;", "", "", "testMode", "Lcom/superwall/sdk/store/testmode/TestMode;", "identityManager", "Lcom/superwall/sdk/identity/IdentityManager;", "setSubscriptionStatus", "Lkotlin/Function1;", "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;", "awaitUtilNetwork", "activateTestMode", "Lkotlin/Function3;", "Lcom/superwall/sdk/models/config/Config;", "", "actor", "Lcom/superwall/sdk/misc/primitives/StateActor;", "Lcom/superwall/sdk/config/models/ConfigState;", "<init>", "(Landroid/content/Context;Lcom/superwall/sdk/store/StoreManager;Lcom/superwall/sdk/store/Entitlements;Lcom/superwall/sdk/storage/Storage;Lcom/superwall/sdk/network/SuperwallAPI;Lcom/superwall/sdk/network/device/DeviceHelper;Lcom/superwall/sdk/config/options/SuperwallOptions;Lcom/superwall/sdk/paywall/manager/PaywallManager;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/config/ConfigManager$Factory;Lcom/superwall/sdk/config/Assignments;Lcom/superwall/sdk/config/PaywallPreload;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function2;Lcom/superwall/sdk/store/testmode/TestMode;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lcom/superwall/sdk/misc/primitives/StateActor;)V", "getContext", "()Landroid/content/Context;", "getStoreManager", "()Lcom/superwall/sdk/store/StoreManager;", "getEntitlements", "()Lcom/superwall/sdk/store/Entitlements;", "getStorage", "()Lcom/superwall/sdk/storage/Storage;", "getNetwork", "()Lcom/superwall/sdk/network/SuperwallAPI;", "getDeviceHelper", "()Lcom/superwall/sdk/network/device/DeviceHelper;", "getOptions", "()Lcom/superwall/sdk/config/options/SuperwallOptions;", "setOptions", "(Lcom/superwall/sdk/config/options/SuperwallOptions;)V", "getPaywallManager", "()Lcom/superwall/sdk/paywall/manager/PaywallManager;", "getWebPaywallRedeemer", "()Lkotlin/jvm/functions/Function0;", "getFactory", "()Lcom/superwall/sdk/config/ConfigManager$Factory;", "getAssignments", "()Lcom/superwall/sdk/config/Assignments;", "getPaywallPreload", "()Lcom/superwall/sdk/config/PaywallPreload;", "getTracker", "()Lkotlin/jvm/functions/Function2;", "Lkotlin/jvm/functions/Function2;", "getTestMode", "()Lcom/superwall/sdk/store/testmode/TestMode;", "getIdentityManager", "getSetSubscriptionStatus", "()Lkotlin/jvm/functions/Function1;", "getAwaitUtilNetwork", "Lkotlin/jvm/functions/Function1;", "getActivateTestMode", "()Lkotlin/jvm/functions/Function3;", "Lkotlin/jvm/functions/Function3;", "getActor", "()Lcom/superwall/sdk/misc/primitives/StateActor;", PermissionsResponse.SCOPE_KEY, "Lkotlinx/coroutines/CoroutineScope;", "getScope", "()Lkotlinx/coroutines/CoroutineScope;", "configState", "Lkotlinx/coroutines/flow/StateFlow;", "getConfigState$superwall_release", "()Lkotlinx/coroutines/flow/StateFlow;", "config", "getConfig", "()Lcom/superwall/sdk/models/config/Config;", "hasConfig", "Lkotlinx/coroutines/flow/Flow;", "getHasConfig", "()Lkotlinx/coroutines/flow/Flow;", "_triggersByEventName", "", "", "Lcom/superwall/sdk/models/triggers/Trigger;", RNConstants.ARG_VALUE, "", "triggersByEventName", "getTriggersByEventName", "()Ljava/util/Map;", "setTriggersByEventName", "(Ljava/util/Map;)V", "setTriggers", "triggers", "unconfirmedAssignments", "Lcom/superwall/sdk/models/triggers/ExperimentID;", "Lcom/superwall/sdk/models/triggers/Experiment$Variant;", "getUnconfirmedAssignments", "fetchConfiguration", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "reset", "reevaluateTestMode", Keys.APP_USER_ID, Keys.ALIAS_ID, "(Lcom/superwall/sdk/models/config/Config;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "preloadAllPaywalls", "recheckPreloadIfNeeded", "preloadPaywallsByNames", "eventNames", "", "(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "refreshConfiguration", "force", "refreshConfiguration$superwall_release", "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "applyRetrievedConfigForTesting", "applyRetrievedConfigForTesting$superwall_release", "setConfigStateForTesting", "state", "setConfigStateForTesting$superwall_release", "Factory", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class ConfigManager implements ConfigContext {
    private Map<String, Trigger> _triggersByEventName;
    private final Function3<Config, Boolean, Continuation<? super Unit>, Object> activateTestMode;
    private final StateActor<ConfigContext, ConfigState> actor;
    private final Assignments assignments;
    private final Function1<Continuation<? super Unit>, Object> awaitUtilNetwork;
    private final Context context;
    private final DeviceHelper deviceHelper;
    private final Entitlements entitlements;
    private final Factory factory;
    private final Flow<Config> hasConfig;
    private final Function0<IdentityManager> identityManager;
    private final IOScope ioScope;
    private final SuperwallAPI network;
    private SuperwallOptions options;
    private final PaywallManager paywallManager;
    private final PaywallPreload paywallPreload;
    private final Function1<SubscriptionStatus, Unit> setSubscriptionStatus;
    private final Storage storage;
    private final StoreManager storeManager;
    private final TestMode testMode;
    private final Function2<TrackableSuperwallEvent, Continuation<? super Unit>, Object> tracker;
    private final Function0<WebPaywallRedeemer> webPaywallRedeemer;

    /* JADX INFO: compiled from: ConfigManager.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/config/ConfigManager$Factory;", "Lcom/superwall/sdk/dependencies/RequestFactory;", "Lcom/superwall/sdk/dependencies/DeviceInfoFactory;", "Lcom/superwall/sdk/dependencies/RuleAttributesFactory;", "Lcom/superwall/sdk/dependencies/DeviceHelperFactory;", "Lcom/superwall/sdk/dependencies/StoreTransactionFactory;", "Lcom/superwall/sdk/dependencies/HasExternalPurchaseControllerFactory;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface Factory extends RequestFactory, DeviceInfoFactory, RuleAttributesFactory, DeviceHelperFactory, StoreTransactionFactory, HasExternalPurchaseControllerFactory {
    }

    /* JADX INFO: renamed from: com.superwall.sdk.config.ConfigManager$getAssignments$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ConfigManager.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.config.ConfigManager", f = "ConfigManager.kt", i = {0}, l = {137, TsExtractor.TS_STREAM_TYPE_DTS}, m = "getAssignments", n = {"this"}, s = {"L$0"})
    static final class C04611 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C04611(Continuation<? super C04611> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ConfigManager.this.getAssignments(this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.config.ConfigManager$preloadAllPaywalls$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ConfigManager.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.config.ConfigManager", f = "ConfigManager.kt", i = {0}, l = {142, 143}, m = "preloadAllPaywalls", n = {"this"}, s = {"L$0"})
    static final class C04621 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C04621(Continuation<? super C04621> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ConfigManager.this.preloadAllPaywalls(this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.config.ConfigManager$preloadPaywallsByNames$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ConfigManager.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.config.ConfigManager", f = "ConfigManager.kt", i = {0, 0}, l = {170, 171}, m = "preloadPaywallsByNames", n = {"this", "eventNames"}, s = {"L$0", "L$1"})
    static final class C04631 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C04631(Continuation<? super C04631> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ConfigManager.this.preloadPaywallsByNames(null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.config.ConfigManager$recheckPreloadIfNeeded$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ConfigManager.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.config.ConfigManager", f = "ConfigManager.kt", i = {0}, l = {164, 166}, m = "recheckPreloadIfNeeded", n = {"this"}, s = {"L$0"})
    static final class C04641 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C04641(Continuation<? super C04641> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ConfigManager.this.recheckPreloadIfNeeded(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ConfigManager(Context context, StoreManager storeManager, Entitlements entitlements, Storage storage, SuperwallAPI network, DeviceHelper deviceHelper, SuperwallOptions options, PaywallManager paywallManager, Function0<WebPaywallRedeemer> webPaywallRedeemer, Factory factory, Assignments assignments, PaywallPreload paywallPreload, IOScope ioScope, Function2<? super TrackableSuperwallEvent, ? super Continuation<? super Unit>, ? extends Object> tracker, TestMode testMode, Function0<IdentityManager> function0, Function1<? super SubscriptionStatus, Unit> function1, Function1<? super Continuation<? super Unit>, ? extends Object> awaitUtilNetwork, Function3<? super Config, ? super Boolean, ? super Continuation<? super Unit>, ? extends Object> activateTestMode, StateActor<ConfigContext, ConfigState> actor) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(storeManager, "storeManager");
        Intrinsics.checkNotNullParameter(entitlements, "entitlements");
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(deviceHelper, "deviceHelper");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(paywallManager, "paywallManager");
        Intrinsics.checkNotNullParameter(webPaywallRedeemer, "webPaywallRedeemer");
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(assignments, "assignments");
        Intrinsics.checkNotNullParameter(paywallPreload, "paywallPreload");
        Intrinsics.checkNotNullParameter(ioScope, "ioScope");
        Intrinsics.checkNotNullParameter(tracker, "tracker");
        Intrinsics.checkNotNullParameter(awaitUtilNetwork, "awaitUtilNetwork");
        Intrinsics.checkNotNullParameter(activateTestMode, "activateTestMode");
        Intrinsics.checkNotNullParameter(actor, "actor");
        this.context = context;
        this.storeManager = storeManager;
        this.entitlements = entitlements;
        this.storage = storage;
        this.network = network;
        this.deviceHelper = deviceHelper;
        this.options = options;
        this.paywallManager = paywallManager;
        this.webPaywallRedeemer = webPaywallRedeemer;
        this.factory = factory;
        this.assignments = assignments;
        this.paywallPreload = paywallPreload;
        this.ioScope = ioScope;
        this.tracker = tracker;
        this.testMode = testMode;
        this.identityManager = function0;
        this.setSubscriptionStatus = function1;
        this.awaitUtilNetwork = awaitUtilNetwork;
        this.activateTestMode = activateTestMode;
        this.actor = actor;
        final StateFlow<ConfigState> state = getActor().getState();
        this.hasConfig = FlowKt.take(new Flow<Config>() { // from class: com.superwall.sdk.config.ConfigManager$special$$inlined$mapNotNull$1

            /* JADX INFO: renamed from: com.superwall.sdk.config.ConfigManager$special$$inlined$mapNotNull$1$2, reason: invalid class name */
            /* JADX INFO: compiled from: Emitters.kt */
            @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* JADX INFO: renamed from: com.superwall.sdk.config.ConfigManager$special$$inlined$mapNotNull$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                @DebugMetadata(c = "com.superwall.sdk.config.ConfigManager$special$$inlined$mapNotNull$1$2", f = "ConfigManager.kt", i = {}, l = {52}, m = "emit", n = {}, s = {})
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0014  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
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
                    Object obj2 = anonymousClass1.result;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i = anonymousClass1.label;
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj2);
                        FlowCollector flowCollector = this.$this_unsafeFlow;
                        Config config = ConfigStateKt.getConfig((ConfigState) obj);
                        if (config != null) {
                            anonymousClass1.label = 1;
                            if (flowCollector.emit(config, anonymousClass1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        }
                    } else {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj2);
                    }
                    return Unit.INSTANCE;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super Config> flowCollector, Continuation continuation) {
                Object objCollect = state.collect(new AnonymousClass2(flowCollector), continuation);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        }, 1);
        this._triggersByEventName = new LinkedHashMap();
    }

    @Override // com.superwall.sdk.misc.primitives.BaseContext
    public void delete(Storable<?> storable) {
        ConfigContext.DefaultImpls.delete(this, storable);
    }

    @Override // com.superwall.sdk.misc.primitives.StoreContext
    public void effect(TypedAction<ConfigContext> typedAction) {
        ConfigContext.DefaultImpls.effect(this, typedAction);
    }

    @Override // com.superwall.sdk.misc.primitives.StoreContext, com.superwall.sdk.misc.primitives.StateStore
    public StateFlow<ConfigState> getState() {
        return ConfigContext.DefaultImpls.getState(this);
    }

    @Override // com.superwall.sdk.misc.primitives.StoreContext
    public Object immediate(TypedAction<ConfigContext> typedAction, Continuation<? super Unit> continuation) {
        return ConfigContext.DefaultImpls.immediate(this, typedAction, continuation);
    }

    @Override // com.superwall.sdk.misc.primitives.StoreContext
    public Object immediateUntil(TypedAction<ConfigContext> typedAction, Function1<? super ConfigState, Boolean> function1, Continuation<? super Unit> continuation) {
        return ConfigContext.DefaultImpls.immediateUntil(this, typedAction, function1, continuation);
    }

    @Override // com.superwall.sdk.misc.primitives.BaseContext
    public <T> void persist(Storable<T> storable, T t) {
        ConfigContext.DefaultImpls.persist(this, storable, t);
    }

    @Override // com.superwall.sdk.misc.primitives.BaseContext
    /* JADX INFO: renamed from: read-IoAF18A, reason: not valid java name */
    public <T> Object mo10584readIoAF18A(Storable<T> storable) {
        return ConfigContext.DefaultImpls.m10583readIoAF18A(this, storable);
    }

    @Override // com.superwall.sdk.misc.primitives.StoreContext
    public void sideEffect(Function1<? super Continuation<? super Unit>, ? extends Object> function1) {
        ConfigContext.DefaultImpls.sideEffect(this, function1);
    }

    @Override // com.superwall.sdk.misc.primitives.BaseContext
    public void track(TrackableSuperwallEvent trackableSuperwallEvent) {
        ConfigContext.DefaultImpls.track(this, trackableSuperwallEvent);
    }

    @Override // com.superwall.sdk.misc.primitives.StoreContext, com.superwall.sdk.misc.primitives.StateStore
    public void update(Reducer<ConfigState> reducer) {
        ConfigContext.DefaultImpls.update(this, reducer);
    }

    @Override // com.superwall.sdk.config.ConfigContext
    public Context getContext() {
        return this.context;
    }

    @Override // com.superwall.sdk.config.ConfigContext
    public StoreManager getStoreManager() {
        return this.storeManager;
    }

    @Override // com.superwall.sdk.config.ConfigContext
    public Entitlements getEntitlements() {
        return this.entitlements;
    }

    @Override // com.superwall.sdk.misc.primitives.BaseContext
    public Storage getStorage() {
        return this.storage;
    }

    @Override // com.superwall.sdk.config.ConfigContext
    public SuperwallAPI getNetwork() {
        return this.network;
    }

    @Override // com.superwall.sdk.config.ConfigContext
    public DeviceHelper getDeviceHelper() {
        return this.deviceHelper;
    }

    @Override // com.superwall.sdk.config.ConfigContext
    public SuperwallOptions getOptions() {
        return this.options;
    }

    public void setOptions(SuperwallOptions superwallOptions) {
        Intrinsics.checkNotNullParameter(superwallOptions, "<set-?>");
        this.options = superwallOptions;
    }

    @Override // com.superwall.sdk.config.ConfigContext
    public PaywallManager getPaywallManager() {
        return this.paywallManager;
    }

    @Override // com.superwall.sdk.config.ConfigContext
    public Function0<WebPaywallRedeemer> getWebPaywallRedeemer() {
        return this.webPaywallRedeemer;
    }

    @Override // com.superwall.sdk.config.ConfigContext
    public Factory getFactory() {
        return this.factory;
    }

    @Override // com.superwall.sdk.config.ConfigContext
    public Assignments getAssignments() {
        return this.assignments;
    }

    @Override // com.superwall.sdk.config.ConfigContext
    public PaywallPreload getPaywallPreload() {
        return this.paywallPreload;
    }

    @Override // com.superwall.sdk.misc.primitives.BaseContext
    public Function2<TrackableSuperwallEvent, Continuation<? super Unit>, Object> getTracker() {
        return this.tracker;
    }

    @Override // com.superwall.sdk.config.ConfigContext
    public TestMode getTestMode() {
        return this.testMode;
    }

    @Override // com.superwall.sdk.config.ConfigContext
    public Function0<IdentityManager> getIdentityManager() {
        return this.identityManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: com.superwall.sdk.config.ConfigManager$1, reason: invalid class name */
    /* JADX INFO: compiled from: ConfigManager.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.config.ConfigManager$1", f = "ConfigManager.kt", i = {}, l = {60}, m = "invokeSuspend", n = {}, s = {})
    public static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ Context $context;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Context context, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.$context = context;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass1(this.$context, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (AwaitUntilNetworkExistsKt.awaitUntilNetworkExists$default(this.$context, 0L, this, 1, null) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.superwall.sdk.config.ConfigContext
    public Function1<SubscriptionStatus, Unit> getSetSubscriptionStatus() {
        return this.setSubscriptionStatus;
    }

    public /* synthetic */ ConfigManager(Context context, StoreManager storeManager, Entitlements entitlements, Storage storage, SuperwallAPI superwallAPI, DeviceHelper deviceHelper, SuperwallOptions superwallOptions, PaywallManager paywallManager, Function0 function0, Factory factory, Assignments assignments, PaywallPreload paywallPreload, IOScope iOScope, Function2 function2, TestMode testMode, Function0 function1, Function1 function3, Function1 function4, Function3 function5, StateActor stateActor, int i, DefaultConstructorMarker defaultConstructorMarker) {
        Context context2;
        Function1 anonymousClass1;
        TestMode testMode2 = (i & 16384) != 0 ? null : testMode;
        Function0 function6 = (32768 & i) != 0 ? null : function1;
        Function1 function7 = (65536 & i) != 0 ? null : function3;
        if ((131072 & i) != 0) {
            context2 = context;
            anonymousClass1 = new AnonymousClass1(context2, null);
        } else {
            context2 = context;
            anonymousClass1 = function4;
        }
        this(context2, storeManager, entitlements, storage, superwallAPI, deviceHelper, superwallOptions, paywallManager, function0, factory, assignments, paywallPreload, iOScope, function2, testMode2, function6, function7, anonymousClass1, (i & 262144) != 0 ? new AnonymousClass2(null) : function5, stateActor);
    }

    @Override // com.superwall.sdk.config.ConfigContext
    public Function1<Continuation<? super Unit>, Object> getAwaitUtilNetwork() {
        return this.awaitUtilNetwork;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: com.superwall.sdk.config.ConfigManager$2, reason: invalid class name */
    /* JADX INFO: compiled from: ConfigManager.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0004H\n"}, d2 = {"<anonymous>", "", "<unused var>", "Lcom/superwall/sdk/models/config/Config;", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.config.ConfigManager$2", f = "ConfigManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class AnonymousClass2 extends SuspendLambda implements Function3<Config, Boolean, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
        }

        public final Object invoke(Config config, boolean z, Continuation<? super Unit> continuation) {
            return new AnonymousClass2(continuation).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Object invoke(Config config, Boolean bool, Continuation<? super Unit> continuation) {
            return invoke(config, bool.booleanValue(), continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }
    }

    @Override // com.superwall.sdk.config.ConfigContext
    public Function3<Config, Boolean, Continuation<? super Unit>, Object> getActivateTestMode() {
        return this.activateTestMode;
    }

    @Override // com.superwall.sdk.misc.primitives.StoreContext
    public StateActor<ConfigContext, ConfigState> getActor() {
        return this.actor;
    }

    @Override // com.superwall.sdk.misc.primitives.StoreContext
    public CoroutineScope getScope() {
        return this.ioScope;
    }

    public final StateFlow<ConfigState> getConfigState$superwall_release() {
        return getActor().getState();
    }

    public final Config getConfig() {
        ConfigState value = getActor().getState().getValue();
        if (value instanceof ConfigState.Failed) {
            effect(ConfigState.Actions.FetchConfig.INSTANCE);
        }
        return ConfigStateKt.getConfig(value);
    }

    public final Flow<Config> getHasConfig() {
        return this.hasConfig;
    }

    public final Map<String, Trigger> getTriggersByEventName() {
        return this._triggersByEventName;
    }

    public final void setTriggersByEventName(Map<String, Trigger> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this._triggersByEventName = MapsKt.toMutableMap(value);
    }

    @Override // com.superwall.sdk.config.ConfigContext
    public void setTriggers(Map<String, Trigger> triggers) {
        Intrinsics.checkNotNullParameter(triggers, "triggers");
        setTriggersByEventName(triggers);
    }

    public final Map<String, Experiment.Variant> getUnconfirmedAssignments() {
        return getAssignments().getUnconfirmedAssignments();
    }

    public final Object fetchConfiguration(Continuation<? super Unit> continuation) {
        ConfigState value = getActor().getState().getValue();
        if ((value instanceof ConfigState.Retrieving) || (value instanceof ConfigState.Retrying)) {
            return Unit.INSTANCE;
        }
        Object objImmediate = immediate(ConfigState.Actions.FetchConfig.INSTANCE, continuation);
        return objImmediate == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objImmediate : Unit.INSTANCE;
    }

    public final void reset() {
        Config config = ConfigStateKt.getConfig(getActor().getState().getValue());
        if (config == null) {
            return;
        }
        getAssignments().reset();
        getAssignments().choosePaywallVariants(config.getTriggers());
        effect(ConfigState.Actions.PreloadIfEnabled.INSTANCE);
    }

    public static /* synthetic */ Object reevaluateTestMode$default(ConfigManager configManager, Config config, String str, String str2, Continuation continuation, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: reevaluateTestMode");
        }
        if ((i & 1) != 0) {
            config = null;
        }
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            str2 = null;
        }
        return configManager.reevaluateTestMode(config, str, str2, continuation);
    }

    public final Object reevaluateTestMode(Config config, String str, String str2, Continuation<? super Unit> continuation) {
        Object objImmediate;
        return ((config == null && (config = ConfigStateKt.getConfig(getActor().getState().getValue())) == null) || getTestMode() == null || (objImmediate = immediate(new ConfigState.Actions.ReevaluateTestMode(config, str, str2), continuation)) != IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? Unit.INSTANCE : objImmediate;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0063, code lost:
    
        if (r2.immediate(r6, r0) == r1) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getAssignments(kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.superwall.sdk.config.ConfigManager.C04611
            if (r0 == 0) goto L14
            r0 = r6
            com.superwall.sdk.config.ConfigManager$getAssignments$1 r0 = (com.superwall.sdk.config.ConfigManager.C04611) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r6 = r0.label
            int r6 = r6 - r2
            r0.label = r6
            goto L19
        L14:
            com.superwall.sdk.config.ConfigManager$getAssignments$1 r0 = new com.superwall.sdk.config.ConfigManager$getAssignments$1
            r0.<init>(r6)
        L19:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3d
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r6)
            goto L66
        L2d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L35:
            java.lang.Object r2 = r0.L$0
            com.superwall.sdk.config.ConfigManager r2 = (com.superwall.sdk.config.ConfigManager) r2
            kotlin.ResultKt.throwOnFailure(r6)
            goto L56
        L3d:
            kotlin.ResultKt.throwOnFailure(r6)
            com.superwall.sdk.misc.primitives.StateActor r6 = r5.getActor()
            kotlinx.coroutines.flow.StateFlow r6 = r6.getState()
            kotlinx.coroutines.flow.Flow r6 = (kotlinx.coroutines.flow.Flow) r6
            r0.L$0 = r5
            r0.label = r4
            java.lang.Object r6 = com.superwall.sdk.misc.Config_AwaitFirstValidConfigKt.awaitFirstValidConfig(r6, r0)
            if (r6 != r1) goto L55
            goto L65
        L55:
            r2 = r5
        L56:
            com.superwall.sdk.config.models.ConfigState$Actions$GetAssignments r6 = com.superwall.sdk.config.models.ConfigState.Actions.GetAssignments.INSTANCE
            com.superwall.sdk.misc.primitives.TypedAction r6 = (com.superwall.sdk.misc.primitives.TypedAction) r6
            r4 = 0
            r0.L$0 = r4
            r0.label = r3
            java.lang.Object r6 = r2.immediate(r6, r0)
            if (r6 != r1) goto L66
        L65:
            return r1
        L66:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.config.ConfigManager.getAssignments(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0063, code lost:
    
        if (r2.immediate(r6, r0) == r1) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object preloadAllPaywalls(kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.superwall.sdk.config.ConfigManager.C04621
            if (r0 == 0) goto L14
            r0 = r6
            com.superwall.sdk.config.ConfigManager$preloadAllPaywalls$1 r0 = (com.superwall.sdk.config.ConfigManager.C04621) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r6 = r0.label
            int r6 = r6 - r2
            r0.label = r6
            goto L19
        L14:
            com.superwall.sdk.config.ConfigManager$preloadAllPaywalls$1 r0 = new com.superwall.sdk.config.ConfigManager$preloadAllPaywalls$1
            r0.<init>(r6)
        L19:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3d
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r6)
            goto L66
        L2d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L35:
            java.lang.Object r2 = r0.L$0
            com.superwall.sdk.config.ConfigManager r2 = (com.superwall.sdk.config.ConfigManager) r2
            kotlin.ResultKt.throwOnFailure(r6)
            goto L56
        L3d:
            kotlin.ResultKt.throwOnFailure(r6)
            com.superwall.sdk.misc.primitives.StateActor r6 = r5.getActor()
            kotlinx.coroutines.flow.StateFlow r6 = r6.getState()
            kotlinx.coroutines.flow.Flow r6 = (kotlinx.coroutines.flow.Flow) r6
            r0.L$0 = r5
            r0.label = r4
            java.lang.Object r6 = com.superwall.sdk.misc.Config_AwaitFirstValidConfigKt.awaitFirstValidConfig(r6, r0)
            if (r6 != r1) goto L55
            goto L65
        L55:
            r2 = r5
        L56:
            com.superwall.sdk.config.models.ConfigState$Actions$PreloadAll r6 = com.superwall.sdk.config.models.ConfigState.Actions.PreloadAll.INSTANCE
            com.superwall.sdk.misc.primitives.TypedAction r6 = (com.superwall.sdk.misc.primitives.TypedAction) r6
            r4 = 0
            r0.L$0 = r4
            r0.label = r3
            java.lang.Object r6 = r2.immediate(r6, r0)
            if (r6 != r1) goto L66
        L65:
            return r1
        L66:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.config.ConfigManager.preloadAllPaywalls(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00e2, code lost:
    
        if (r2.immediate(r8, r0) == r1) goto L48;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object recheckPreloadIfNeeded(kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            Method dump skipped, instruction units count: 235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.config.ConfigManager.recheckPreloadIfNeeded(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006e, code lost:
    
        if (r2.immediate(r7, r0) == r1) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object preloadPaywallsByNames(java.util.Set<java.lang.String> r6, kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.superwall.sdk.config.ConfigManager.C04631
            if (r0 == 0) goto L14
            r0 = r7
            com.superwall.sdk.config.ConfigManager$preloadPaywallsByNames$1 r0 = (com.superwall.sdk.config.ConfigManager.C04631) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r7 = r0.label
            int r7 = r7 - r2
            r0.label = r7
            goto L19
        L14:
            com.superwall.sdk.config.ConfigManager$preloadPaywallsByNames$1 r0 = new com.superwall.sdk.config.ConfigManager$preloadPaywallsByNames$1
            r0.<init>(r7)
        L19:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L41
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r7)
            goto L71
        L2d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L35:
            java.lang.Object r6 = r0.L$1
            java.util.Set r6 = (java.util.Set) r6
            java.lang.Object r2 = r0.L$0
            com.superwall.sdk.config.ConfigManager r2 = (com.superwall.sdk.config.ConfigManager) r2
            kotlin.ResultKt.throwOnFailure(r7)
            goto L5c
        L41:
            kotlin.ResultKt.throwOnFailure(r7)
            com.superwall.sdk.misc.primitives.StateActor r7 = r5.getActor()
            kotlinx.coroutines.flow.StateFlow r7 = r7.getState()
            kotlinx.coroutines.flow.Flow r7 = (kotlinx.coroutines.flow.Flow) r7
            r0.L$0 = r5
            r0.L$1 = r6
            r0.label = r4
            java.lang.Object r7 = com.superwall.sdk.misc.Config_AwaitFirstValidConfigKt.awaitFirstValidConfig(r7, r0)
            if (r7 != r1) goto L5b
            goto L70
        L5b:
            r2 = r5
        L5c:
            com.superwall.sdk.config.models.ConfigState$Actions$PreloadByNames r7 = new com.superwall.sdk.config.models.ConfigState$Actions$PreloadByNames
            r7.<init>(r6)
            com.superwall.sdk.misc.primitives.TypedAction r7 = (com.superwall.sdk.misc.primitives.TypedAction) r7
            r6 = 0
            r0.L$0 = r6
            r0.L$1 = r6
            r0.label = r3
            java.lang.Object r6 = r2.immediate(r7, r0)
            if (r6 != r1) goto L71
        L70:
            return r1
        L71:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.config.ConfigManager.preloadPaywallsByNames(java.util.Set, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ Object refreshConfiguration$superwall_release$default(ConfigManager configManager, boolean z, Continuation continuation, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: refreshConfiguration");
        }
        if ((i & 1) != 0) {
            z = false;
        }
        return configManager.refreshConfiguration$superwall_release(z, continuation);
    }

    public final Object refreshConfiguration$superwall_release(boolean z, Continuation<? super Unit> continuation) {
        Object objImmediate;
        return (ConfigStateKt.getConfig(getActor().getState().getValue()) != null && (objImmediate = immediate(new ConfigState.Actions.RefreshConfig(z), continuation)) == IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? objImmediate : Unit.INSTANCE;
    }

    public final void applyRetrievedConfigForTesting$superwall_release(Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        getActor().update(new ConfigState.Updates.SetRetrieved(config));
    }

    public final void setConfigStateForTesting$superwall_release(ConfigState state) {
        Intrinsics.checkNotNullParameter(state, "state");
        getActor().update(new ConfigState.Updates.Set(state));
    }
}
