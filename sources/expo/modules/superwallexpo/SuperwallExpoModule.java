package expo.modules.superwallexpo;

import android.net.Uri;
import androidx.tracing.Trace;
import com.facebook.react.modules.appstate.AppStateModule;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.delegate.PurchaseResult;
import com.superwall.sdk.delegate.RestorationResult;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.models.assignment.ConfirmedAssignment;
import com.superwall.sdk.paywall.presentation.CustomCallbackResult;
import com.superwall.sdk.paywall.presentation.PaywallInfo;
import com.superwall.sdk.paywall.presentation.PaywallPresentationHandler;
import com.superwall.sdk.paywall.presentation.PublicPresentationKt;
import com.superwall.sdk.paywall.presentation.internal.state.PaywallResult;
import com.superwall.sdk.paywall.presentation.internal.state.PaywallSkippedReason;
import com.superwall.sdk.store.Entitlements;
import expo.modules.interfaces.permissions.PermissionsResponse;
import expo.modules.kotlin.Promise;
import expo.modules.kotlin.exception.CodedException;
import expo.modules.kotlin.functions.AsyncFunctionWithPromiseComponent;
import expo.modules.kotlin.functions.BoolAsyncFunctionComponent;
import expo.modules.kotlin.functions.DoubleAsyncFunctionComponent;
import expo.modules.kotlin.functions.FloatAsyncFunctionComponent;
import expo.modules.kotlin.functions.IntAsyncFunctionComponent;
import expo.modules.kotlin.functions.StringAsyncFunctionComponent;
import expo.modules.kotlin.functions.SyncFunctionComponent;
import expo.modules.kotlin.functions.UntypedAsyncFunctionComponent;
import expo.modules.kotlin.modules.Module;
import expo.modules.kotlin.modules.ModuleDefinitionBuilder;
import expo.modules.kotlin.modules.ModuleDefinitionData;
import expo.modules.kotlin.types.AnyType;
import expo.modules.kotlin.types.AnyTypeProvider;
import expo.modules.kotlin.types.LazyKType;
import expo.modules.kotlin.types.ReturnType;
import expo.modules.kotlin.types.ReturnTypeProvider;
import expo.modules.kotlin.types.TypeConverterProvider;
import expo.modules.superwallexpo.bridges.PurchaseControllerBridge;
import expo.modules.superwallexpo.json.ConfigurationStatusKt;
import expo.modules.superwallexpo.json.ConfirmedAssignmentKt;
import expo.modules.superwallexpo.json.EntitlementsKt;
import expo.modules.superwallexpo.json.InterfaceStyleKt;
import expo.modules.superwallexpo.json.PaywallInfoKt;
import expo.modules.superwallexpo.json.PaywallResultKt;
import expo.modules.superwallexpo.json.PaywallSkippedReasonKt;
import expo.modules.superwallexpo.json.PurchaseResultKt;
import expo.modules.superwallexpo.json.RestorationResultKt;
import expo.modules.superwallexpo.json.SubscriptionStatusKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: SuperwallExpoModule.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 12\u00020\u0001:\u00011B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010/\u001a\u000200H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007R\"\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0012X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0012X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0012X\u0082D¢\u0006\u0002\n\u0000R#\u0010\u0017\u001a\u0014\u0012\u0004\u0012\u00020\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00190\u000b0\u0018¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u0012X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0012X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0012X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0012X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0012X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0012X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0012X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0012X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0012X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0012X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0012X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020\u0012X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0012X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0012X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0012X\u0082D¢\u0006\u0002\n\u0000R\u0011\u0010+\u001a\u00020,¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.¨\u00062"}, d2 = {"Lexpo/modules/superwallexpo/SuperwallExpoModule;", "Lexpo/modules/kotlin/modules/Module;", "<init>", "()V", PermissionsResponse.SCOPE_KEY, "Lkotlinx/coroutines/CoroutineScope;", "getScope", "()Lkotlinx/coroutines/CoroutineScope;", "ioScope", "getIoScope", "backPressedPromise", "Ljava/util/concurrent/CompletableFuture;", "", "getBackPressedPromise", "()Ljava/util/concurrent/CompletableFuture;", "setBackPressedPromise", "(Ljava/util/concurrent/CompletableFuture;)V", "onPaywallPresent", "", "onPaywallDismiss", "onPaywallError", "onPaywallSkip", "onCustomCallback", "customCallbackFutures", "Ljava/util/concurrent/ConcurrentHashMap;", "Lcom/superwall/sdk/paywall/presentation/CustomCallbackResult;", "getCustomCallbackFutures", "()Ljava/util/concurrent/ConcurrentHashMap;", "onPurchase", "onPurchaseRestore", "onBackPressed", "subscriptionStatusDidChange", "handleSuperwallEvent", "handleCustomPaywallAction", "willDismissPaywall", "willPresentPaywall", "didDismissPaywall", "didPresentPaywall", "paywallWillOpenURL", "paywallWillOpenDeepLink", "handleLog", "willRedeemLink", "didRedeemLink", "purchaseController", "Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;", "getPurchaseController", "()Lexpo/modules/superwallexpo/bridges/PurchaseControllerBridge;", "definition", "Lexpo/modules/kotlin/modules/ModuleDefinitionData;", "Companion", "expo-superwall_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SuperwallExpoModule extends Module {
    private static SuperwallExpoModule instance;
    private CompletableFuture<Boolean> backPressedPromise;
    private final ConcurrentHashMap<String, CompletableFuture<CustomCallbackResult>> customCallbackFutures;
    private final String didDismissPaywall;
    private final String didPresentPaywall;
    private final String didRedeemLink;
    private final String handleCustomPaywallAction;
    private final String handleLog;
    private final String handleSuperwallEvent;
    private final String onBackPressed;
    private final String onCustomCallback;
    private final String onPaywallDismiss;
    private final String onPaywallError;
    private final String onPaywallPresent;
    private final String onPaywallSkip;
    private final String onPurchase;
    private final String onPurchaseRestore;
    private final String paywallWillOpenDeepLink;
    private final String paywallWillOpenURL;
    private final PurchaseControllerBridge purchaseController;
    private final String subscriptionStatusDidChange;
    private final String willDismissPaywall;
    private final String willPresentPaywall;
    private final String willRedeemLink;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Set<SuperwallExpoModule> instances = Collections.newSetFromMap(new WeakHashMap());
    private final CoroutineScope scope = CoroutineScopeKt.CoroutineScope(Dispatchers.getMain());
    private final CoroutineScope ioScope = CoroutineScopeKt.CoroutineScope(Dispatchers.getIO());

    public SuperwallExpoModule() {
        instance = this;
        Set<SuperwallExpoModule> instances2 = instances;
        Intrinsics.checkNotNullExpressionValue(instances2, "instances");
        synchronized (instances2) {
            instances2.add(this);
        }
        this.onPaywallPresent = "onPaywallPresent";
        this.onPaywallDismiss = "onPaywallDismiss";
        this.onPaywallError = "onPaywallError";
        this.onPaywallSkip = "onPaywallSkip";
        this.onCustomCallback = "onCustomCallback";
        this.customCallbackFutures = new ConcurrentHashMap<>();
        this.onPurchase = "onPurchase";
        this.onPurchaseRestore = "onPurchaseRestore";
        this.onBackPressed = "onBackPressed";
        this.subscriptionStatusDidChange = "subscriptionStatusDidChange";
        this.handleSuperwallEvent = "handleSuperwallEvent";
        this.handleCustomPaywallAction = "handleCustomPaywallAction";
        this.willDismissPaywall = "willDismissPaywall";
        this.willPresentPaywall = "willPresentPaywall";
        this.didDismissPaywall = "didDismissPaywall";
        this.didPresentPaywall = "didPresentPaywall";
        this.paywallWillOpenURL = "paywallWillOpenURL";
        this.paywallWillOpenDeepLink = "paywallWillOpenDeepLink";
        this.handleLog = "handleLog";
        this.willRedeemLink = "willRedeemLink";
        this.didRedeemLink = "didRedeemLink";
        this.purchaseController = PurchaseControllerBridge.INSTANCE.getInstance();
    }

    /* JADX INFO: compiled from: SuperwallExpoModule.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010#\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J&\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0016\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0013R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR2\u0010\n\u001a&\u0012\f\u0012\n \f*\u0004\u0018\u00010\u00050\u0005 \f*\u0012\u0012\f\u0012\n \f*\u0004\u0018\u00010\u00050\u0005\u0018\u00010\r0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lexpo/modules/superwallexpo/SuperwallExpoModule$Companion;", "", "<init>", "()V", "instance", "Lexpo/modules/superwallexpo/SuperwallExpoModule;", "getInstance", "()Lexpo/modules/superwallexpo/SuperwallExpoModule;", "setInstance", "(Lexpo/modules/superwallexpo/SuperwallExpoModule;)V", "instances", "", "kotlin.jvm.PlatformType", "", "emitEvent", "", "name", "", "body", "", "expo-superwall_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final SuperwallExpoModule getInstance() {
            return SuperwallExpoModule.instance;
        }

        public final void setInstance(SuperwallExpoModule superwallExpoModule) {
            SuperwallExpoModule.instance = superwallExpoModule;
        }

        public final void emitEvent(String name, Map<String, ? extends Object> body) {
            List list;
            Intrinsics.checkNotNullParameter(name, "name");
            Set set = SuperwallExpoModule.instances;
            Intrinsics.checkNotNullExpressionValue(set, "access$getInstances$cp(...)");
            synchronized (set) {
                Set set2 = SuperwallExpoModule.instances;
                Intrinsics.checkNotNullExpressionValue(set2, "access$getInstances$cp(...)");
                list = CollectionsKt.toList(set2);
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((SuperwallExpoModule) it.next()).sendEvent(name, body == null ? MapsKt.emptyMap() : body);
            }
        }
    }

    public final CoroutineScope getScope() {
        return this.scope;
    }

    public final CoroutineScope getIoScope() {
        return this.ioScope;
    }

    public final CompletableFuture<Boolean> getBackPressedPromise() {
        return this.backPressedPromise;
    }

    public final void setBackPressedPromise(CompletableFuture<Boolean> completableFuture) {
        this.backPressedPromise = completableFuture;
    }

    public final ConcurrentHashMap<String, CompletableFuture<CustomCallbackResult>> getCustomCallbackFutures() {
        return this.customCallbackFutures;
    }

    public final PurchaseControllerBridge getPurchaseController() {
        return this.purchaseController;
    }

    @Override // expo.modules.kotlin.modules.Module
    public ModuleDefinitionData definition() {
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent;
        AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent;
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent2;
        AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent2;
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent3;
        AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent3;
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent4;
        AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent4;
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent5;
        AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent5;
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent6;
        AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent6;
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent7;
        AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent7;
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent8;
        AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent8;
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent9;
        AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent9;
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent10;
        AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent10;
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent11;
        AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent11;
        SuperwallExpoModule superwallExpoModule = this;
        Trace.beginSection("[ExpoModulesCore] " + (superwallExpoModule.getClass() + ".ModuleDefinition"));
        try {
            ModuleDefinitionBuilder moduleDefinitionBuilder = new ModuleDefinitionBuilder(superwallExpoModule);
            moduleDefinitionBuilder.Name("SuperwallExpo");
            moduleDefinitionBuilder.Events(this.onPaywallPresent, this.onPaywallDismiss, this.onPaywallError, this.onPaywallSkip, this.onCustomCallback, this.onPurchase, this.onPurchaseRestore, this.onBackPressed, this.subscriptionStatusDidChange, this.handleSuperwallEvent, this.handleCustomPaywallAction, this.willDismissPaywall, this.willPresentPaywall, this.didDismissPaywall, this.didPresentPaywall, this.paywallWillOpenURL, this.paywallWillOpenDeepLink, this.handleLog, this.willRedeemLink, this.didRedeemLink);
            ModuleDefinitionBuilder moduleDefinitionBuilder2 = moduleDefinitionBuilder;
            TypeConverterProvider converters = moduleDefinitionBuilder2.getConverters();
            AnyType[] anyTypeArr = new AnyType[2];
            AnyType anyType = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), false));
            if (anyType == null) {
                anyType = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), false, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$1
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(String.class);
                    }
                }), converters);
            }
            anyTypeArr[0] = anyType;
            AnyType anyType2 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Map.class), true));
            if (anyType2 == null) {
                anyType2 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Map.class), true, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$2
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(Map.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(String.class)), KTypeProjection.INSTANCE.invariant(Reflection.typeOf(Object.class)));
                    }
                }), converters);
            }
            anyTypeArr[1] = anyType2;
            AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent12 = new AsyncFunctionWithPromiseComponent("identify", anyTypeArr, new Function2<Object[], Promise, Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$3
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object[] objArr, Promise promise) {
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    Intrinsics.checkNotNullParameter(promise, "promise");
                    BuildersKt__Builders_commonKt.launch$default(this.this$0.getScope(), null, null, new SuperwallExpoModule$definition$1$1$1((Map) objArr[1], (String) objArr[0], promise, null), 3, null);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                    invoke2(objArr, promise);
                    return Unit.INSTANCE;
                }
            });
            moduleDefinitionBuilder2.getAsyncFunctions().put("identify", asyncFunctionWithPromiseComponent12);
            ModuleDefinitionBuilder moduleDefinitionBuilder3 = moduleDefinitionBuilder;
            if (Intrinsics.areEqual(Promise.class, Promise.class)) {
                asyncFunctionWithPromiseComponent = new AsyncFunctionWithPromiseComponent("reset", new AnyType[0], new Function2<Object[], Promise, Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$1
                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                        invoke2(objArr, promise);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Object[] objArr, Promise promise) {
                        Intrinsics.checkNotNullParameter(objArr, "<unused var>");
                        Intrinsics.checkNotNullParameter(promise, "promise");
                        BuildersKt__Builders_commonKt.launch$default(this.this$0.getScope(), null, null, new SuperwallExpoModule$definition$1$2$1(promise, null), 3, null);
                    }
                });
            } else {
                TypeConverterProvider converters2 = moduleDefinitionBuilder3.getConverters();
                AnyType[] anyTypeArr2 = new AnyType[1];
                AnyType anyType3 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Promise.class), false));
                if (anyType3 == null) {
                    anyType3 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Promise.class), false, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$2
                        @Override // kotlin.jvm.functions.Function0
                        public final KType invoke() {
                            return Reflection.typeOf(Promise.class);
                        }
                    }), converters2);
                }
                anyTypeArr2[0] = anyType3;
                Function1<Object[], Job> function1 = new Function1<Object[], Job>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$3
                    @Override // kotlin.jvm.functions.Function1
                    public final Job invoke(Object[] objArr) {
                        Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                        return BuildersKt__Builders_commonKt.launch$default(this.this$0.getScope(), null, null, new SuperwallExpoModule$definition$1$2$1((Promise) objArr[0], null), 3, null);
                    }
                };
                if (!Intrinsics.areEqual(Job.class, Integer.TYPE)) {
                    if (!Intrinsics.areEqual(Job.class, Boolean.TYPE)) {
                        if (!Intrinsics.areEqual(Job.class, Double.TYPE)) {
                            if (!Intrinsics.areEqual(Job.class, Float.TYPE)) {
                                if (Intrinsics.areEqual(Job.class, String.class)) {
                                    untypedAsyncFunctionComponent = new StringAsyncFunctionComponent("reset", anyTypeArr2, function1);
                                } else {
                                    untypedAsyncFunctionComponent = new UntypedAsyncFunctionComponent("reset", anyTypeArr2, function1);
                                }
                            } else {
                                untypedAsyncFunctionComponent = new FloatAsyncFunctionComponent("reset", anyTypeArr2, function1);
                            }
                        } else {
                            untypedAsyncFunctionComponent = new DoubleAsyncFunctionComponent("reset", anyTypeArr2, function1);
                        }
                    } else {
                        untypedAsyncFunctionComponent = new BoolAsyncFunctionComponent("reset", anyTypeArr2, function1);
                    }
                } else {
                    untypedAsyncFunctionComponent = new IntAsyncFunctionComponent("reset", anyTypeArr2, function1);
                }
                asyncFunctionWithPromiseComponent = untypedAsyncFunctionComponent;
            }
            moduleDefinitionBuilder3.getAsyncFunctions().put("reset", asyncFunctionWithPromiseComponent);
            ModuleDefinitionBuilder moduleDefinitionBuilder4 = moduleDefinitionBuilder;
            TypeConverterProvider converters3 = moduleDefinitionBuilder4.getConverters();
            AnyType[] anyTypeArr3 = new AnyType[4];
            AnyType anyType4 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), false));
            if (anyType4 == null) {
                anyType4 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), false, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$4
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(String.class);
                    }
                }), converters3);
            }
            anyTypeArr3[0] = anyType4;
            AnyType anyType5 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Map.class), true));
            if (anyType5 == null) {
                anyType5 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Map.class), true, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$5
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(Map.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(String.class)), KTypeProjection.INSTANCE.invariant(Reflection.typeOf(Object.class)));
                    }
                }), converters3);
            }
            anyTypeArr3[1] = anyType5;
            AnyType anyType6 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Boolean.class), true));
            if (anyType6 == null) {
                anyType6 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Boolean.class), true, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$6
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(Boolean.class);
                    }
                }), converters3);
            }
            anyTypeArr3[2] = anyType6;
            AnyType anyType7 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), true));
            if (anyType7 == null) {
                anyType7 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), true, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$7
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(String.class);
                    }
                }), converters3);
            }
            anyTypeArr3[3] = anyType7;
            AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent13 = new AsyncFunctionWithPromiseComponent("configure", anyTypeArr3, new Function2<Object[], Promise, Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$8
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object[] objArr, Promise promise) {
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    Intrinsics.checkNotNullParameter(promise, "promise");
                    Object obj = objArr[0];
                    Object obj2 = objArr[1];
                    Object obj3 = objArr[2];
                    String str = (String) objArr[3];
                    CoroutineScope ioScope = this.this$0.getIoScope();
                    SuperwallExpoModule superwallExpoModule2 = this.this$0;
                    BuildersKt__Builders_commonKt.launch$default(ioScope, null, null, new SuperwallExpoModule$definition$1$3$1((Map) obj2, superwallExpoModule2, (Boolean) obj3, (String) obj, str, promise, null), 3, null);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                    invoke2(objArr, promise);
                    return Unit.INSTANCE;
                }
            });
            moduleDefinitionBuilder4.getAsyncFunctions().put("configure", asyncFunctionWithPromiseComponent13);
            ModuleDefinitionBuilder moduleDefinitionBuilder5 = moduleDefinitionBuilder;
            if (Intrinsics.areEqual(Promise.class, Promise.class)) {
                asyncFunctionWithPromiseComponent2 = new AsyncFunctionWithPromiseComponent("getConfigurationStatus", new AnyType[0], new Function2<Object[], Promise, Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$4
                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                        invoke2(objArr, promise);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Object[] objArr, Promise promise) {
                        Intrinsics.checkNotNullParameter(objArr, "<unused var>");
                        Intrinsics.checkNotNullParameter(promise, "promise");
                        try {
                            promise.resolve(ConfigurationStatusKt.asString(Superwall.INSTANCE.getInstance().getConfigurationState()));
                        } catch (Throwable th) {
                            promise.reject(new CodedException(th));
                        }
                    }
                });
            } else {
                TypeConverterProvider converters4 = moduleDefinitionBuilder5.getConverters();
                AnyType[] anyTypeArr4 = new AnyType[1];
                AnyType anyType8 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Promise.class), false));
                if (anyType8 == null) {
                    anyType8 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Promise.class), false, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$5
                        @Override // kotlin.jvm.functions.Function0
                        public final KType invoke() {
                            return Reflection.typeOf(Promise.class);
                        }
                    }), converters4);
                }
                anyTypeArr4[0] = anyType8;
                Function1<Object[], Unit> function2 = new Function1<Object[], Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$6
                    @Override // kotlin.jvm.functions.Function1
                    public final Unit invoke(Object[] objArr) {
                        Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                        Promise promise = (Promise) objArr[0];
                        try {
                            promise.resolve(ConfigurationStatusKt.asString(Superwall.INSTANCE.getInstance().getConfigurationState()));
                        } catch (Throwable th) {
                            promise.reject(new CodedException(th));
                        }
                        return Unit.INSTANCE;
                    }
                };
                if (!Intrinsics.areEqual(Unit.class, Integer.TYPE)) {
                    if (!Intrinsics.areEqual(Unit.class, Boolean.TYPE)) {
                        if (!Intrinsics.areEqual(Unit.class, Double.TYPE)) {
                            if (!Intrinsics.areEqual(Unit.class, Float.TYPE)) {
                                if (Intrinsics.areEqual(Unit.class, String.class)) {
                                    untypedAsyncFunctionComponent2 = new StringAsyncFunctionComponent("getConfigurationStatus", anyTypeArr4, function2);
                                } else {
                                    untypedAsyncFunctionComponent2 = new UntypedAsyncFunctionComponent("getConfigurationStatus", anyTypeArr4, function2);
                                }
                            } else {
                                untypedAsyncFunctionComponent2 = new FloatAsyncFunctionComponent("getConfigurationStatus", anyTypeArr4, function2);
                            }
                        } else {
                            untypedAsyncFunctionComponent2 = new DoubleAsyncFunctionComponent("getConfigurationStatus", anyTypeArr4, function2);
                        }
                    } else {
                        untypedAsyncFunctionComponent2 = new BoolAsyncFunctionComponent("getConfigurationStatus", anyTypeArr4, function2);
                    }
                } else {
                    untypedAsyncFunctionComponent2 = new IntAsyncFunctionComponent("getConfigurationStatus", anyTypeArr4, function2);
                }
                asyncFunctionWithPromiseComponent2 = untypedAsyncFunctionComponent2;
            }
            moduleDefinitionBuilder5.getAsyncFunctions().put("getConfigurationStatus", asyncFunctionWithPromiseComponent2);
            ModuleDefinitionBuilder moduleDefinitionBuilder6 = moduleDefinitionBuilder;
            TypeConverterProvider converters5 = moduleDefinitionBuilder6.getConverters();
            AnyType[] anyTypeArr5 = new AnyType[3];
            AnyType anyType9 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), false));
            if (anyType9 == null) {
                anyType9 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), false, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$9
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(String.class);
                    }
                }), converters5);
            }
            anyTypeArr5[0] = anyType9;
            AnyType anyType10 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Map.class), true));
            if (anyType10 == null) {
                anyType10 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Map.class), true, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$10
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(Map.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(String.class)), KTypeProjection.INSTANCE.invariant(Reflection.typeOf(Object.class)));
                    }
                }), converters5);
            }
            anyTypeArr5[1] = anyType10;
            AnyType anyType11 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), true));
            if (anyType11 == null) {
                anyType11 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), true, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$11
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(String.class);
                    }
                }), converters5);
            }
            anyTypeArr5[2] = anyType11;
            AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent14 = new AsyncFunctionWithPromiseComponent("registerPlacement", anyTypeArr5, new Function2<Object[], Promise, Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$12
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object[] objArr, final Promise promise) {
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    Intrinsics.checkNotNullParameter(promise, "promise");
                    Object obj = objArr[0];
                    Object obj2 = objArr[1];
                    final String str = (String) objArr[2];
                    Map map = (Map) obj2;
                    String str2 = (String) obj;
                    PaywallPresentationHandler paywallPresentationHandler = str != null ? new PaywallPresentationHandler() : null;
                    if (paywallPresentationHandler != null) {
                        final SuperwallExpoModule superwallExpoModule2 = this.this$0;
                        paywallPresentationHandler.onPresent(new Function1<PaywallInfo, Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$1$5$1
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(PaywallInfo paywallInfo) {
                                invoke2(paywallInfo);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(PaywallInfo paywallInfo) {
                                Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
                                Map<String, ? extends Object> mapMapOf = MapsKt.mapOf(TuplesKt.to("paywallInfoJson", PaywallInfoKt.toJson(paywallInfo)), TuplesKt.to("handlerId", str));
                                SuperwallExpoModule superwallExpoModule3 = superwallExpoModule2;
                                superwallExpoModule3.sendEvent(superwallExpoModule3.onPaywallPresent, mapMapOf);
                            }
                        });
                    }
                    if (paywallPresentationHandler != null) {
                        final SuperwallExpoModule superwallExpoModule3 = this.this$0;
                        paywallPresentationHandler.onDismiss(new Function2<PaywallInfo, PaywallResult, Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$1$5$2
                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Unit invoke(PaywallInfo paywallInfo, PaywallResult paywallResult) {
                                invoke2(paywallInfo, paywallResult);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(PaywallInfo paywallInfo, PaywallResult result) {
                                Intrinsics.checkNotNullParameter(paywallInfo, "paywallInfo");
                                Intrinsics.checkNotNullParameter(result, "result");
                                Map<String, ? extends Object> mapMapOf = MapsKt.mapOf(TuplesKt.to("paywallInfoJson", PaywallInfoKt.toJson(paywallInfo)), TuplesKt.to("result", PaywallResultKt.toJson(result)), TuplesKt.to("handlerId", str));
                                SuperwallExpoModule superwallExpoModule4 = superwallExpoModule3;
                                superwallExpoModule4.sendEvent(superwallExpoModule4.onPaywallDismiss, mapMapOf);
                            }
                        });
                    }
                    if (paywallPresentationHandler != null) {
                        final SuperwallExpoModule superwallExpoModule4 = this.this$0;
                        paywallPresentationHandler.onError(new Function1<Throwable, Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$1$5$3
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                                invoke2(th);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(Throwable error) {
                                Intrinsics.checkNotNullParameter(error, "error");
                                Map<String, ? extends Object> mapMapOf = MapsKt.mapOf(TuplesKt.to("errorString", error.getLocalizedMessage()), TuplesKt.to("handlerId", str));
                                SuperwallExpoModule superwallExpoModule5 = superwallExpoModule4;
                                superwallExpoModule5.sendEvent(superwallExpoModule5.onPaywallError, mapMapOf);
                            }
                        });
                    }
                    if (paywallPresentationHandler != null) {
                        final SuperwallExpoModule superwallExpoModule5 = this.this$0;
                        paywallPresentationHandler.onSkip(new Function1<PaywallSkippedReason, Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$1$5$4
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(PaywallSkippedReason paywallSkippedReason) {
                                invoke2(paywallSkippedReason);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(PaywallSkippedReason reason) {
                                Intrinsics.checkNotNullParameter(reason, "reason");
                                Map<String, ? extends Object> mapMapOf = MapsKt.mapOf(TuplesKt.to("skippedReason", PaywallSkippedReasonKt.toJson(reason)), TuplesKt.to("handlerId", str));
                                SuperwallExpoModule superwallExpoModule6 = superwallExpoModule5;
                                superwallExpoModule6.sendEvent(superwallExpoModule6.onPaywallSkip, mapMapOf);
                            }
                        });
                    }
                    if (paywallPresentationHandler != null) {
                        paywallPresentationHandler.onCustomCallback(new SuperwallExpoModule$definition$1$5$5(this.this$0, str, null));
                    }
                    PublicPresentationKt.register(Superwall.INSTANCE.getInstance(), str2, map, paywallPresentationHandler, new Function0<Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$1$5$6
                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ Unit invoke() {
                            invoke2();
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2() {
                            promise.resolve((Object) null);
                        }
                    });
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                    invoke2(objArr, promise);
                    return Unit.INSTANCE;
                }
            });
            moduleDefinitionBuilder6.getAsyncFunctions().put("registerPlacement", asyncFunctionWithPromiseComponent14);
            ModuleDefinitionBuilder moduleDefinitionBuilder7 = moduleDefinitionBuilder;
            if (Intrinsics.areEqual(Promise.class, Promise.class)) {
                asyncFunctionWithPromiseComponent3 = new AsyncFunctionWithPromiseComponent("getAssignments", new AnyType[0], new Function2<Object[], Promise, Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$7
                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                        invoke2(objArr, promise);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Object[] objArr, Promise promise) {
                        Intrinsics.checkNotNullParameter(objArr, "<unused var>");
                        Intrinsics.checkNotNullParameter(promise, "promise");
                        Object objM10561getAssignmentsd1pmJ48 = Superwall.INSTANCE.getInstance().m10561getAssignmentsd1pmJ48();
                        Throwable thM11244exceptionOrNullimpl = Result.m11244exceptionOrNullimpl(objM10561getAssignmentsd1pmJ48);
                        if (thM11244exceptionOrNullimpl == null) {
                            List list = (List) objM10561getAssignmentsd1pmJ48;
                            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                arrayList.add(ConfirmedAssignmentKt.toJson((ConfirmedAssignment) it.next()));
                            }
                            promise.resolve((Collection<? extends Object>) arrayList);
                            return;
                        }
                        promise.reject(new CodedException(thM11244exceptionOrNullimpl));
                    }
                });
            } else {
                TypeConverterProvider converters6 = moduleDefinitionBuilder7.getConverters();
                AnyType[] anyTypeArr6 = new AnyType[1];
                AnyType anyType12 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Promise.class), false));
                if (anyType12 == null) {
                    anyType12 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Promise.class), false, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$8
                        @Override // kotlin.jvm.functions.Function0
                        public final KType invoke() {
                            return Reflection.typeOf(Promise.class);
                        }
                    }), converters6);
                }
                anyTypeArr6[0] = anyType12;
                Function1<Object[], Unit> function3 = new Function1<Object[], Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$9
                    @Override // kotlin.jvm.functions.Function1
                    public final Unit invoke(Object[] objArr) {
                        Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                        Promise promise = (Promise) objArr[0];
                        Object objM10561getAssignmentsd1pmJ48 = Superwall.INSTANCE.getInstance().m10561getAssignmentsd1pmJ48();
                        Throwable thM11244exceptionOrNullimpl = Result.m11244exceptionOrNullimpl(objM10561getAssignmentsd1pmJ48);
                        if (thM11244exceptionOrNullimpl == null) {
                            List list = (List) objM10561getAssignmentsd1pmJ48;
                            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                arrayList.add(ConfirmedAssignmentKt.toJson((ConfirmedAssignment) it.next()));
                            }
                            promise.resolve((Collection<? extends Object>) arrayList);
                        } else {
                            promise.reject(new CodedException(thM11244exceptionOrNullimpl));
                        }
                        return Unit.INSTANCE;
                    }
                };
                if (!Intrinsics.areEqual(Unit.class, Integer.TYPE)) {
                    if (!Intrinsics.areEqual(Unit.class, Boolean.TYPE)) {
                        if (!Intrinsics.areEqual(Unit.class, Double.TYPE)) {
                            if (!Intrinsics.areEqual(Unit.class, Float.TYPE)) {
                                if (Intrinsics.areEqual(Unit.class, String.class)) {
                                    untypedAsyncFunctionComponent3 = new StringAsyncFunctionComponent("getAssignments", anyTypeArr6, function3);
                                } else {
                                    untypedAsyncFunctionComponent3 = new UntypedAsyncFunctionComponent("getAssignments", anyTypeArr6, function3);
                                }
                            } else {
                                untypedAsyncFunctionComponent3 = new FloatAsyncFunctionComponent("getAssignments", anyTypeArr6, function3);
                            }
                        } else {
                            untypedAsyncFunctionComponent3 = new DoubleAsyncFunctionComponent("getAssignments", anyTypeArr6, function3);
                        }
                    } else {
                        untypedAsyncFunctionComponent3 = new BoolAsyncFunctionComponent("getAssignments", anyTypeArr6, function3);
                    }
                } else {
                    untypedAsyncFunctionComponent3 = new IntAsyncFunctionComponent("getAssignments", anyTypeArr6, function3);
                }
                asyncFunctionWithPromiseComponent3 = untypedAsyncFunctionComponent3;
            }
            moduleDefinitionBuilder7.getAsyncFunctions().put("getAssignments", asyncFunctionWithPromiseComponent3);
            ModuleDefinitionBuilder moduleDefinitionBuilder8 = moduleDefinitionBuilder;
            if (Intrinsics.areEqual(Promise.class, Promise.class)) {
                asyncFunctionWithPromiseComponent4 = new AsyncFunctionWithPromiseComponent("getEntitlements", new AnyType[0], new Function2<Object[], Promise, Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$10
                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                        invoke2(objArr, promise);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Object[] objArr, Promise promise) {
                        Intrinsics.checkNotNullParameter(objArr, "<unused var>");
                        Intrinsics.checkNotNullParameter(promise, "promise");
                        try {
                            Entitlements entitlements = Superwall.INSTANCE.getInstance().getEntitlements();
                            LinkedHashMap linkedHashMap = new LinkedHashMap();
                            linkedHashMap.put("all", EntitlementsKt.toJson(entitlements.getAll()));
                            linkedHashMap.put("inactive", EntitlementsKt.toJson(entitlements.getInactive()));
                            linkedHashMap.put(AppStateModule.APP_STATE_ACTIVE, EntitlementsKt.toJson(entitlements.getActive()));
                            promise.resolve((Map<String, ? extends Object>) linkedHashMap);
                        } catch (Exception e) {
                            promise.reject(new CodedException(e));
                        }
                    }
                });
            } else {
                TypeConverterProvider converters7 = moduleDefinitionBuilder8.getConverters();
                AnyType[] anyTypeArr7 = new AnyType[1];
                AnyType anyType13 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Promise.class), false));
                if (anyType13 == null) {
                    anyType13 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Promise.class), false, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$11
                        @Override // kotlin.jvm.functions.Function0
                        public final KType invoke() {
                            return Reflection.typeOf(Promise.class);
                        }
                    }), converters7);
                }
                anyTypeArr7[0] = anyType13;
                Function1<Object[], Unit> function4 = new Function1<Object[], Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$12
                    @Override // kotlin.jvm.functions.Function1
                    public final Unit invoke(Object[] objArr) {
                        Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                        Promise promise = (Promise) objArr[0];
                        try {
                            Entitlements entitlements = Superwall.INSTANCE.getInstance().getEntitlements();
                            LinkedHashMap linkedHashMap = new LinkedHashMap();
                            linkedHashMap.put("all", EntitlementsKt.toJson(entitlements.getAll()));
                            linkedHashMap.put("inactive", EntitlementsKt.toJson(entitlements.getInactive()));
                            linkedHashMap.put(AppStateModule.APP_STATE_ACTIVE, EntitlementsKt.toJson(entitlements.getActive()));
                            promise.resolve((Map<String, ? extends Object>) linkedHashMap);
                        } catch (Exception e) {
                            promise.reject(new CodedException(e));
                        }
                        return Unit.INSTANCE;
                    }
                };
                if (!Intrinsics.areEqual(Unit.class, Integer.TYPE)) {
                    if (!Intrinsics.areEqual(Unit.class, Boolean.TYPE)) {
                        if (!Intrinsics.areEqual(Unit.class, Double.TYPE)) {
                            if (!Intrinsics.areEqual(Unit.class, Float.TYPE)) {
                                if (Intrinsics.areEqual(Unit.class, String.class)) {
                                    untypedAsyncFunctionComponent4 = new StringAsyncFunctionComponent("getEntitlements", anyTypeArr7, function4);
                                } else {
                                    untypedAsyncFunctionComponent4 = new UntypedAsyncFunctionComponent("getEntitlements", anyTypeArr7, function4);
                                }
                            } else {
                                untypedAsyncFunctionComponent4 = new FloatAsyncFunctionComponent("getEntitlements", anyTypeArr7, function4);
                            }
                        } else {
                            untypedAsyncFunctionComponent4 = new DoubleAsyncFunctionComponent("getEntitlements", anyTypeArr7, function4);
                        }
                    } else {
                        untypedAsyncFunctionComponent4 = new BoolAsyncFunctionComponent("getEntitlements", anyTypeArr7, function4);
                    }
                } else {
                    untypedAsyncFunctionComponent4 = new IntAsyncFunctionComponent("getEntitlements", anyTypeArr7, function4);
                }
                asyncFunctionWithPromiseComponent4 = untypedAsyncFunctionComponent4;
            }
            moduleDefinitionBuilder8.getAsyncFunctions().put("getEntitlements", asyncFunctionWithPromiseComponent4);
            ModuleDefinitionBuilder moduleDefinitionBuilder9 = moduleDefinitionBuilder;
            if (Intrinsics.areEqual(Promise.class, Promise.class)) {
                asyncFunctionWithPromiseComponent5 = new AsyncFunctionWithPromiseComponent("getSubscriptionStatus", new AnyType[0], new Function2<Object[], Promise, Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$13
                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                        invoke2(objArr, promise);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Object[] objArr, Promise promise) {
                        Intrinsics.checkNotNullParameter(objArr, "<unused var>");
                        Intrinsics.checkNotNullParameter(promise, "promise");
                        try {
                            promise.resolve(SubscriptionStatusKt.toJson(Superwall.INSTANCE.getInstance().getSubscriptionStatus().getValue()));
                        } catch (Exception e) {
                            promise.reject(new CodedException(e));
                        }
                    }
                });
            } else {
                TypeConverterProvider converters8 = moduleDefinitionBuilder9.getConverters();
                AnyType[] anyTypeArr8 = new AnyType[1];
                AnyType anyType14 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Promise.class), false));
                if (anyType14 == null) {
                    anyType14 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Promise.class), false, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$14
                        @Override // kotlin.jvm.functions.Function0
                        public final KType invoke() {
                            return Reflection.typeOf(Promise.class);
                        }
                    }), converters8);
                }
                anyTypeArr8[0] = anyType14;
                Function1<Object[], Unit> function5 = new Function1<Object[], Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$15
                    @Override // kotlin.jvm.functions.Function1
                    public final Unit invoke(Object[] objArr) {
                        Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                        Promise promise = (Promise) objArr[0];
                        try {
                            promise.resolve(SubscriptionStatusKt.toJson(Superwall.INSTANCE.getInstance().getSubscriptionStatus().getValue()));
                        } catch (Exception e) {
                            promise.reject(new CodedException(e));
                        }
                        return Unit.INSTANCE;
                    }
                };
                if (!Intrinsics.areEqual(Unit.class, Integer.TYPE)) {
                    if (!Intrinsics.areEqual(Unit.class, Boolean.TYPE)) {
                        if (!Intrinsics.areEqual(Unit.class, Double.TYPE)) {
                            if (!Intrinsics.areEqual(Unit.class, Float.TYPE)) {
                                if (Intrinsics.areEqual(Unit.class, String.class)) {
                                    untypedAsyncFunctionComponent5 = new StringAsyncFunctionComponent("getSubscriptionStatus", anyTypeArr8, function5);
                                } else {
                                    untypedAsyncFunctionComponent5 = new UntypedAsyncFunctionComponent("getSubscriptionStatus", anyTypeArr8, function5);
                                }
                            } else {
                                untypedAsyncFunctionComponent5 = new FloatAsyncFunctionComponent("getSubscriptionStatus", anyTypeArr8, function5);
                            }
                        } else {
                            untypedAsyncFunctionComponent5 = new DoubleAsyncFunctionComponent("getSubscriptionStatus", anyTypeArr8, function5);
                        }
                    } else {
                        untypedAsyncFunctionComponent5 = new BoolAsyncFunctionComponent("getSubscriptionStatus", anyTypeArr8, function5);
                    }
                } else {
                    untypedAsyncFunctionComponent5 = new IntAsyncFunctionComponent("getSubscriptionStatus", anyTypeArr8, function5);
                }
                asyncFunctionWithPromiseComponent5 = untypedAsyncFunctionComponent5;
            }
            moduleDefinitionBuilder9.getAsyncFunctions().put("getSubscriptionStatus", asyncFunctionWithPromiseComponent5);
            ModuleDefinitionBuilder moduleDefinitionBuilder10 = moduleDefinitionBuilder;
            TypeConverterProvider converters9 = moduleDefinitionBuilder10.getConverters();
            AnyType[] anyTypeArr9 = new AnyType[1];
            AnyType anyType15 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Map.class), false));
            if (anyType15 == null) {
                anyType15 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Map.class), false, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$13
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(Map.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(String.class)), KTypeProjection.INSTANCE.invariant(Reflection.typeOf(Object.class)));
                    }
                }), converters9);
            }
            anyTypeArr9[0] = anyType15;
            AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent15 = new AsyncFunctionWithPromiseComponent("setSubscriptionStatus", anyTypeArr9, new Function2<Object[], Promise, Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$14
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object[] objArr, Promise promise) {
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    Intrinsics.checkNotNullParameter(promise, "promise");
                    BuildersKt__Builders_commonKt.launch$default(this.this$0.getScope(), null, null, new SuperwallExpoModule$definition$1$9$1((Map) objArr[0], promise, null), 3, null);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                    invoke2(objArr, promise);
                    return Unit.INSTANCE;
                }
            });
            moduleDefinitionBuilder10.getAsyncFunctions().put("setSubscriptionStatus", asyncFunctionWithPromiseComponent15);
            ModuleDefinitionBuilder moduleDefinitionBuilder11 = moduleDefinitionBuilder;
            TypeConverterProvider converters10 = moduleDefinitionBuilder11.getConverters();
            AnyType[] anyTypeArr10 = new AnyType[1];
            AnyType anyType16 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), true));
            if (anyType16 == null) {
                anyType16 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), true, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$Function$1
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(String.class);
                    }
                }), converters10);
            }
            anyTypeArr10[0] = anyType16;
            ReturnTypeProvider returnTypeProvider = ReturnTypeProvider.INSTANCE;
            ReturnType returnType = returnTypeProvider.getTypes().get(Reflection.getOrCreateKotlinClass(Unit.class));
            if (returnType == null) {
                returnType = new ReturnType(Reflection.getOrCreateKotlinClass(Unit.class));
                returnTypeProvider.getTypes().put(Reflection.getOrCreateKotlinClass(Unit.class), returnType);
            }
            moduleDefinitionBuilder11.getSyncFunctions().put("setInterfaceStyle", new SyncFunctionComponent("setInterfaceStyle", anyTypeArr10, returnType, new Function1<Object[], Object>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$Function$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] objArr) {
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    String str = (String) objArr[0];
                    Superwall.INSTANCE.getInstance().setInterfaceStyle(str != null ? InterfaceStyleKt.interfaceStyleFromString(str) : null);
                    return Unit.INSTANCE;
                }
            }));
            ModuleDefinitionBuilder moduleDefinitionBuilder12 = moduleDefinitionBuilder;
            if (Intrinsics.areEqual(Promise.class, Promise.class)) {
                asyncFunctionWithPromiseComponent6 = new AsyncFunctionWithPromiseComponent("getUserAttributes", new AnyType[0], new Function2<Object[], Promise, Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$16
                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                        invoke2(objArr, promise);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Object[] objArr, Promise promise) {
                        Intrinsics.checkNotNullParameter(objArr, "<unused var>");
                        Intrinsics.checkNotNullParameter(promise, "promise");
                        promise.resolve((Map<String, ? extends Object>) Superwall.INSTANCE.getInstance().getUserAttributes());
                    }
                });
            } else {
                TypeConverterProvider converters11 = moduleDefinitionBuilder12.getConverters();
                AnyType[] anyTypeArr11 = new AnyType[1];
                AnyType anyType17 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Promise.class), false));
                if (anyType17 == null) {
                    anyType17 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Promise.class), false, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$17
                        @Override // kotlin.jvm.functions.Function0
                        public final KType invoke() {
                            return Reflection.typeOf(Promise.class);
                        }
                    }), converters11);
                }
                anyTypeArr11[0] = anyType17;
                Function1<Object[], Unit> function6 = new Function1<Object[], Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$18
                    @Override // kotlin.jvm.functions.Function1
                    public final Unit invoke(Object[] objArr) {
                        Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                        ((Promise) objArr[0]).resolve((Map<String, ? extends Object>) Superwall.INSTANCE.getInstance().getUserAttributes());
                        return Unit.INSTANCE;
                    }
                };
                if (!Intrinsics.areEqual(Unit.class, Integer.TYPE)) {
                    if (!Intrinsics.areEqual(Unit.class, Boolean.TYPE)) {
                        if (!Intrinsics.areEqual(Unit.class, Double.TYPE)) {
                            if (!Intrinsics.areEqual(Unit.class, Float.TYPE)) {
                                if (Intrinsics.areEqual(Unit.class, String.class)) {
                                    untypedAsyncFunctionComponent6 = new StringAsyncFunctionComponent("getUserAttributes", anyTypeArr11, function6);
                                } else {
                                    untypedAsyncFunctionComponent6 = new UntypedAsyncFunctionComponent("getUserAttributes", anyTypeArr11, function6);
                                }
                            } else {
                                untypedAsyncFunctionComponent6 = new FloatAsyncFunctionComponent("getUserAttributes", anyTypeArr11, function6);
                            }
                        } else {
                            untypedAsyncFunctionComponent6 = new DoubleAsyncFunctionComponent("getUserAttributes", anyTypeArr11, function6);
                        }
                    } else {
                        untypedAsyncFunctionComponent6 = new BoolAsyncFunctionComponent("getUserAttributes", anyTypeArr11, function6);
                    }
                } else {
                    untypedAsyncFunctionComponent6 = new IntAsyncFunctionComponent("getUserAttributes", anyTypeArr11, function6);
                }
                asyncFunctionWithPromiseComponent6 = untypedAsyncFunctionComponent6;
            }
            moduleDefinitionBuilder12.getAsyncFunctions().put("getUserAttributes", asyncFunctionWithPromiseComponent6);
            ModuleDefinitionBuilder moduleDefinitionBuilder13 = moduleDefinitionBuilder;
            if (Intrinsics.areEqual(Promise.class, Promise.class)) {
                asyncFunctionWithPromiseComponent7 = new AsyncFunctionWithPromiseComponent("getDeviceAttributes", new AnyType[0], new Function2<Object[], Promise, Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$19
                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                        invoke2(objArr, promise);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Object[] objArr, Promise promise) {
                        Intrinsics.checkNotNullParameter(objArr, "<unused var>");
                        Intrinsics.checkNotNullParameter(promise, "promise");
                        BuildersKt__Builders_commonKt.launch$default(this.this$0.getScope(), null, null, new SuperwallExpoModule$definition$1$12$1(promise, null), 3, null);
                    }
                });
            } else {
                TypeConverterProvider converters12 = moduleDefinitionBuilder13.getConverters();
                AnyType[] anyTypeArr12 = new AnyType[1];
                AnyType anyType18 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Promise.class), false));
                if (anyType18 == null) {
                    anyType18 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Promise.class), false, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$20
                        @Override // kotlin.jvm.functions.Function0
                        public final KType invoke() {
                            return Reflection.typeOf(Promise.class);
                        }
                    }), converters12);
                }
                anyTypeArr12[0] = anyType18;
                Function1<Object[], Job> function7 = new Function1<Object[], Job>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$21
                    @Override // kotlin.jvm.functions.Function1
                    public final Job invoke(Object[] objArr) {
                        Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                        return BuildersKt__Builders_commonKt.launch$default(this.this$0.getScope(), null, null, new SuperwallExpoModule$definition$1$12$1((Promise) objArr[0], null), 3, null);
                    }
                };
                if (!Intrinsics.areEqual(Job.class, Integer.TYPE)) {
                    if (!Intrinsics.areEqual(Job.class, Boolean.TYPE)) {
                        if (!Intrinsics.areEqual(Job.class, Double.TYPE)) {
                            if (!Intrinsics.areEqual(Job.class, Float.TYPE)) {
                                if (Intrinsics.areEqual(Job.class, String.class)) {
                                    untypedAsyncFunctionComponent7 = new StringAsyncFunctionComponent("getDeviceAttributes", anyTypeArr12, function7);
                                } else {
                                    untypedAsyncFunctionComponent7 = new UntypedAsyncFunctionComponent("getDeviceAttributes", anyTypeArr12, function7);
                                }
                            } else {
                                untypedAsyncFunctionComponent7 = new FloatAsyncFunctionComponent("getDeviceAttributes", anyTypeArr12, function7);
                            }
                        } else {
                            untypedAsyncFunctionComponent7 = new DoubleAsyncFunctionComponent("getDeviceAttributes", anyTypeArr12, function7);
                        }
                    } else {
                        untypedAsyncFunctionComponent7 = new BoolAsyncFunctionComponent("getDeviceAttributes", anyTypeArr12, function7);
                    }
                } else {
                    untypedAsyncFunctionComponent7 = new IntAsyncFunctionComponent("getDeviceAttributes", anyTypeArr12, function7);
                }
                asyncFunctionWithPromiseComponent7 = untypedAsyncFunctionComponent7;
            }
            moduleDefinitionBuilder13.getAsyncFunctions().put("getDeviceAttributes", asyncFunctionWithPromiseComponent7);
            ModuleDefinitionBuilder moduleDefinitionBuilder14 = moduleDefinitionBuilder;
            TypeConverterProvider converters13 = moduleDefinitionBuilder14.getConverters();
            AnyType[] anyTypeArr13 = new AnyType[1];
            AnyType anyType19 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Map.class), false));
            if (anyType19 == null) {
                anyType19 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Map.class), false, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$15
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(Map.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(String.class)), KTypeProjection.INSTANCE.invariant(Reflection.nullableTypeOf(Object.class)));
                    }
                }), converters13);
            }
            anyTypeArr13[0] = anyType19;
            AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent16 = new AsyncFunctionWithPromiseComponent("setUserAttributes", anyTypeArr13, new Function2<Object[], Promise, Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$16
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object[] objArr, Promise promise) {
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    Intrinsics.checkNotNullParameter(promise, "promise");
                    BuildersKt__Builders_commonKt.launch$default(this.this$0.getScope(), null, null, new SuperwallExpoModule$definition$1$13$1((Map) objArr[0], promise, null), 3, null);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                    invoke2(objArr, promise);
                    return Unit.INSTANCE;
                }
            });
            moduleDefinitionBuilder14.getAsyncFunctions().put("setUserAttributes", asyncFunctionWithPromiseComponent16);
            ModuleDefinitionBuilder moduleDefinitionBuilder15 = moduleDefinitionBuilder;
            TypeConverterProvider converters14 = moduleDefinitionBuilder15.getConverters();
            AnyType[] anyTypeArr14 = new AnyType[1];
            AnyType anyType20 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), false));
            if (anyType20 == null) {
                anyType20 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), false, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$17
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(String.class);
                    }
                }), converters14);
            }
            anyTypeArr14[0] = anyType20;
            AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent17 = new AsyncFunctionWithPromiseComponent("handleDeepLink", anyTypeArr14, new Function2<Object[], Promise, Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$18
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object[] objArr, Promise promise) {
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    Intrinsics.checkNotNullParameter(promise, "promise");
                    Uri uri = Uri.parse((String) objArr[0]);
                    Superwall.Companion companion = Superwall.INSTANCE;
                    Intrinsics.checkNotNull(uri);
                    Object objM10571handleDeepLinkIoAF18A = companion.m10571handleDeepLinkIoAF18A(uri);
                    if (Result.m11244exceptionOrNullimpl(objM10571handleDeepLinkIoAF18A) == null) {
                        promise.resolve(((Boolean) objM10571handleDeepLinkIoAF18A).booleanValue());
                    } else {
                        promise.resolve(false);
                    }
                    Unit unit = Unit.INSTANCE;
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                    invoke2(objArr, promise);
                    return Unit.INSTANCE;
                }
            });
            moduleDefinitionBuilder15.getAsyncFunctions().put("handleDeepLink", asyncFunctionWithPromiseComponent17);
            ModuleDefinitionBuilder moduleDefinitionBuilder16 = moduleDefinitionBuilder;
            TypeConverterProvider converters15 = moduleDefinitionBuilder16.getConverters();
            AnyType[] anyTypeArr15 = new AnyType[1];
            AnyType anyType21 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Map.class), false));
            if (anyType21 == null) {
                anyType21 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Map.class), false, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$Function$3
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(Map.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(String.class)), KTypeProjection.INSTANCE.invariant(Reflection.typeOf(Object.class)));
                    }
                }), converters15);
            }
            anyTypeArr15[0] = anyType21;
            ReturnTypeProvider returnTypeProvider2 = ReturnTypeProvider.INSTANCE;
            ReturnType returnType2 = returnTypeProvider2.getTypes().get(Reflection.getOrCreateKotlinClass(Boolean.class));
            if (returnType2 == null) {
                returnType2 = new ReturnType(Reflection.getOrCreateKotlinClass(Boolean.class));
                returnTypeProvider2.getTypes().put(Reflection.getOrCreateKotlinClass(Boolean.class), returnType2);
            }
            moduleDefinitionBuilder16.getSyncFunctions().put("didPurchase", new SyncFunctionComponent("didPurchase", anyTypeArr15, returnType2, new Function1<Object[], Object>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$Function$4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] objArr) {
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    PurchaseResult purchaseResultPurchaseResultFromJson = PurchaseResultKt.purchaseResultFromJson((Map) objArr[0]);
                    CompletableFuture<PurchaseResult> purchasePromise = this.this$0.getPurchaseController().getPurchasePromise();
                    if (purchasePromise != null) {
                        return Boolean.valueOf(purchasePromise.complete(purchaseResultPurchaseResultFromJson));
                    }
                    return null;
                }
            }));
            ModuleDefinitionBuilder moduleDefinitionBuilder17 = moduleDefinitionBuilder;
            TypeConverterProvider converters16 = moduleDefinitionBuilder17.getConverters();
            AnyType[] anyTypeArr16 = new AnyType[1];
            AnyType anyType22 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Map.class), false));
            if (anyType22 == null) {
                anyType22 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Map.class), false, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$Function$5
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(Map.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(String.class)), KTypeProjection.INSTANCE.invariant(Reflection.typeOf(Object.class)));
                    }
                }), converters16);
            }
            anyTypeArr16[0] = anyType22;
            ReturnTypeProvider returnTypeProvider3 = ReturnTypeProvider.INSTANCE;
            ReturnType returnType3 = returnTypeProvider3.getTypes().get(Reflection.getOrCreateKotlinClass(Boolean.class));
            if (returnType3 == null) {
                returnType3 = new ReturnType(Reflection.getOrCreateKotlinClass(Boolean.class));
                returnTypeProvider3.getTypes().put(Reflection.getOrCreateKotlinClass(Boolean.class), returnType3);
            }
            moduleDefinitionBuilder17.getSyncFunctions().put("didRestore", new SyncFunctionComponent("didRestore", anyTypeArr16, returnType3, new Function1<Object[], Object>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$Function$6
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] objArr) {
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    RestorationResult restorationResultRestorationResultFromJson = RestorationResultKt.restorationResultFromJson((Map) objArr[0]);
                    CompletableFuture<RestorationResult> restorePromise = this.this$0.getPurchaseController().getRestorePromise();
                    if (restorePromise != null) {
                        return Boolean.valueOf(restorePromise.complete(restorationResultRestorationResultFromJson));
                    }
                    return null;
                }
            }));
            ModuleDefinitionBuilder moduleDefinitionBuilder18 = moduleDefinitionBuilder;
            TypeConverterProvider converters17 = moduleDefinitionBuilder18.getConverters();
            AnyType[] anyTypeArr17 = new AnyType[1];
            AnyType anyType23 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Boolean.class), false));
            if (anyType23 == null) {
                anyType23 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Boolean.class), false, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$Function$7
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(Boolean.TYPE);
                    }
                }), converters17);
            }
            anyTypeArr17[0] = anyType23;
            ReturnTypeProvider returnTypeProvider4 = ReturnTypeProvider.INSTANCE;
            ReturnType returnType4 = returnTypeProvider4.getTypes().get(Reflection.getOrCreateKotlinClass(Boolean.class));
            if (returnType4 == null) {
                returnType4 = new ReturnType(Reflection.getOrCreateKotlinClass(Boolean.class));
                returnTypeProvider4.getTypes().put(Reflection.getOrCreateKotlinClass(Boolean.class), returnType4);
            }
            moduleDefinitionBuilder18.getSyncFunctions().put("didHandleBackPressed", new SyncFunctionComponent("didHandleBackPressed", anyTypeArr17, returnType4, new Function1<Object[], Object>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$Function$8
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] objArr) {
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    boolean zBooleanValue = ((Boolean) objArr[0]).booleanValue();
                    CompletableFuture<Boolean> backPressedPromise = this.this$0.getBackPressedPromise();
                    if (backPressedPromise != null) {
                        return Boolean.valueOf(backPressedPromise.complete(Boolean.valueOf(zBooleanValue)));
                    }
                    return null;
                }
            }));
            ModuleDefinitionBuilder moduleDefinitionBuilder19 = moduleDefinitionBuilder;
            TypeConverterProvider converters18 = moduleDefinitionBuilder19.getConverters();
            AnyType[] anyTypeArr18 = new AnyType[3];
            AnyType anyType24 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), false));
            if (anyType24 == null) {
                anyType24 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), false, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$19
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(String.class);
                    }
                }), converters18);
            }
            anyTypeArr18[0] = anyType24;
            AnyType anyType25 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), false));
            if (anyType25 == null) {
                anyType25 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), false, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$20
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(String.class);
                    }
                }), converters18);
            }
            anyTypeArr18[1] = anyType25;
            AnyType anyType26 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Map.class), true));
            if (anyType26 == null) {
                anyType26 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Map.class), true, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$21
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(Map.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(String.class)), KTypeProjection.INSTANCE.invariant(Reflection.typeOf(Object.class)));
                    }
                }), converters18);
            }
            anyTypeArr18[2] = anyType26;
            AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent18 = new AsyncFunctionWithPromiseComponent("didHandleCustomCallback", anyTypeArr18, new Function2<Object[], Promise, Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$22
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object[] objArr, Promise promise) {
                    CustomCallbackResult customCallbackResultFailure;
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    Intrinsics.checkNotNullParameter(promise, "promise");
                    Object obj = objArr[0];
                    Object obj2 = objArr[1];
                    Map<String, ? extends Object> map = (Map) objArr[2];
                    String str = (String) obj2;
                    CompletableFuture<CustomCallbackResult> completableFutureRemove = this.this$0.getCustomCallbackFutures().remove((String) obj);
                    if (completableFutureRemove == null) {
                        promise.resolve((Object) null);
                        return;
                    }
                    if (Intrinsics.areEqual(str, "success")) {
                        customCallbackResultFailure = CustomCallbackResult.INSTANCE.success(map);
                    } else {
                        customCallbackResultFailure = CustomCallbackResult.INSTANCE.failure(map);
                    }
                    completableFutureRemove.complete(customCallbackResultFailure);
                    promise.resolve((Object) null);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                    invoke2(objArr, promise);
                    return Unit.INSTANCE;
                }
            });
            moduleDefinitionBuilder19.getAsyncFunctions().put("didHandleCustomCallback", asyncFunctionWithPromiseComponent18);
            ModuleDefinitionBuilder moduleDefinitionBuilder20 = moduleDefinitionBuilder;
            if (Intrinsics.areEqual(Promise.class, Promise.class)) {
                asyncFunctionWithPromiseComponent8 = new AsyncFunctionWithPromiseComponent("restorePurchases", new AnyType[0], new Function2<Object[], Promise, Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$22
                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                        invoke2(objArr, promise);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Object[] objArr, Promise promise) {
                        Intrinsics.checkNotNullParameter(objArr, "<unused var>");
                        Intrinsics.checkNotNullParameter(promise, "promise");
                        BuildersKt__Builders_commonKt.launch$default(this.this$0.getIoScope(), null, null, new SuperwallExpoModule$definition$1$19$1(this.this$0, promise, null), 3, null);
                    }
                });
            } else {
                TypeConverterProvider converters19 = moduleDefinitionBuilder20.getConverters();
                AnyType[] anyTypeArr19 = new AnyType[1];
                AnyType anyType27 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Promise.class), false));
                if (anyType27 == null) {
                    anyType27 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Promise.class), false, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$23
                        @Override // kotlin.jvm.functions.Function0
                        public final KType invoke() {
                            return Reflection.typeOf(Promise.class);
                        }
                    }), converters19);
                }
                anyTypeArr19[0] = anyType27;
                Function1<Object[], Job> function8 = new Function1<Object[], Job>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$24
                    @Override // kotlin.jvm.functions.Function1
                    public final Job invoke(Object[] objArr) {
                        Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                        return BuildersKt__Builders_commonKt.launch$default(this.this$0.getIoScope(), null, null, new SuperwallExpoModule$definition$1$19$1(this.this$0, (Promise) objArr[0], null), 3, null);
                    }
                };
                if (!Intrinsics.areEqual(Job.class, Integer.TYPE)) {
                    if (!Intrinsics.areEqual(Job.class, Boolean.TYPE)) {
                        if (!Intrinsics.areEqual(Job.class, Double.TYPE)) {
                            if (!Intrinsics.areEqual(Job.class, Float.TYPE)) {
                                if (Intrinsics.areEqual(Job.class, String.class)) {
                                    untypedAsyncFunctionComponent8 = new StringAsyncFunctionComponent("restorePurchases", anyTypeArr19, function8);
                                } else {
                                    untypedAsyncFunctionComponent8 = new UntypedAsyncFunctionComponent("restorePurchases", anyTypeArr19, function8);
                                }
                            } else {
                                untypedAsyncFunctionComponent8 = new FloatAsyncFunctionComponent("restorePurchases", anyTypeArr19, function8);
                            }
                        } else {
                            untypedAsyncFunctionComponent8 = new DoubleAsyncFunctionComponent("restorePurchases", anyTypeArr19, function8);
                        }
                    } else {
                        untypedAsyncFunctionComponent8 = new BoolAsyncFunctionComponent("restorePurchases", anyTypeArr19, function8);
                    }
                } else {
                    untypedAsyncFunctionComponent8 = new IntAsyncFunctionComponent("restorePurchases", anyTypeArr19, function8);
                }
                asyncFunctionWithPromiseComponent8 = untypedAsyncFunctionComponent8;
            }
            moduleDefinitionBuilder20.getAsyncFunctions().put("restorePurchases", asyncFunctionWithPromiseComponent8);
            ModuleDefinitionBuilder moduleDefinitionBuilder21 = moduleDefinitionBuilder;
            if (Intrinsics.areEqual(Promise.class, Promise.class)) {
                asyncFunctionWithPromiseComponent9 = new AsyncFunctionWithPromiseComponent("dismiss", new AnyType[0], new Function2<Object[], Promise, Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$25
                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                        invoke2(objArr, promise);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Object[] objArr, Promise promise) {
                        Intrinsics.checkNotNullParameter(objArr, "<unused var>");
                        Intrinsics.checkNotNullParameter(promise, "promise");
                        BuildersKt__Builders_commonKt.launch$default(this.this$0.getIoScope(), null, null, new SuperwallExpoModule$definition$1$20$1(this.this$0, promise, null), 3, null);
                    }
                });
            } else {
                TypeConverterProvider converters20 = moduleDefinitionBuilder21.getConverters();
                AnyType[] anyTypeArr20 = new AnyType[1];
                AnyType anyType28 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Promise.class), false));
                if (anyType28 == null) {
                    anyType28 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Promise.class), false, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$26
                        @Override // kotlin.jvm.functions.Function0
                        public final KType invoke() {
                            return Reflection.typeOf(Promise.class);
                        }
                    }), converters20);
                }
                anyTypeArr20[0] = anyType28;
                Function1<Object[], Job> function9 = new Function1<Object[], Job>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$27
                    @Override // kotlin.jvm.functions.Function1
                    public final Job invoke(Object[] objArr) {
                        Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                        return BuildersKt__Builders_commonKt.launch$default(this.this$0.getIoScope(), null, null, new SuperwallExpoModule$definition$1$20$1(this.this$0, (Promise) objArr[0], null), 3, null);
                    }
                };
                if (!Intrinsics.areEqual(Job.class, Integer.TYPE)) {
                    if (!Intrinsics.areEqual(Job.class, Boolean.TYPE)) {
                        if (!Intrinsics.areEqual(Job.class, Double.TYPE)) {
                            if (!Intrinsics.areEqual(Job.class, Float.TYPE)) {
                                if (Intrinsics.areEqual(Job.class, String.class)) {
                                    untypedAsyncFunctionComponent9 = new StringAsyncFunctionComponent("dismiss", anyTypeArr20, function9);
                                } else {
                                    untypedAsyncFunctionComponent9 = new UntypedAsyncFunctionComponent("dismiss", anyTypeArr20, function9);
                                }
                            } else {
                                untypedAsyncFunctionComponent9 = new FloatAsyncFunctionComponent("dismiss", anyTypeArr20, function9);
                            }
                        } else {
                            untypedAsyncFunctionComponent9 = new DoubleAsyncFunctionComponent("dismiss", anyTypeArr20, function9);
                        }
                    } else {
                        untypedAsyncFunctionComponent9 = new BoolAsyncFunctionComponent("dismiss", anyTypeArr20, function9);
                    }
                } else {
                    untypedAsyncFunctionComponent9 = new IntAsyncFunctionComponent("dismiss", anyTypeArr20, function9);
                }
                asyncFunctionWithPromiseComponent9 = untypedAsyncFunctionComponent9;
            }
            moduleDefinitionBuilder21.getAsyncFunctions().put("dismiss", asyncFunctionWithPromiseComponent9);
            ModuleDefinitionBuilder moduleDefinitionBuilder22 = moduleDefinitionBuilder;
            if (Intrinsics.areEqual(Promise.class, Promise.class)) {
                asyncFunctionWithPromiseComponent10 = new AsyncFunctionWithPromiseComponent("confirmAllAssignments", new AnyType[0], new Function2<Object[], Promise, Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$28
                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                        invoke2(objArr, promise);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Object[] objArr, Promise promise) {
                        Intrinsics.checkNotNullParameter(objArr, "<unused var>");
                        Intrinsics.checkNotNullParameter(promise, "promise");
                        BuildersKt__Builders_commonKt.launch$default(this.this$0.getIoScope(), null, null, new SuperwallExpoModule$definition$1$21$1(this.this$0, promise, null), 3, null);
                    }
                });
            } else {
                TypeConverterProvider converters21 = moduleDefinitionBuilder22.getConverters();
                AnyType[] anyTypeArr21 = new AnyType[1];
                AnyType anyType29 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Promise.class), false));
                if (anyType29 == null) {
                    anyType29 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Promise.class), false, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$29
                        @Override // kotlin.jvm.functions.Function0
                        public final KType invoke() {
                            return Reflection.typeOf(Promise.class);
                        }
                    }), converters21);
                }
                anyTypeArr21[0] = anyType29;
                Function1<Object[], Job> function10 = new Function1<Object[], Job>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$30
                    @Override // kotlin.jvm.functions.Function1
                    public final Job invoke(Object[] objArr) {
                        Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                        return BuildersKt__Builders_commonKt.launch$default(this.this$0.getIoScope(), null, null, new SuperwallExpoModule$definition$1$21$1(this.this$0, (Promise) objArr[0], null), 3, null);
                    }
                };
                if (!Intrinsics.areEqual(Job.class, Integer.TYPE)) {
                    if (!Intrinsics.areEqual(Job.class, Boolean.TYPE)) {
                        if (!Intrinsics.areEqual(Job.class, Double.TYPE)) {
                            if (!Intrinsics.areEqual(Job.class, Float.TYPE)) {
                                if (Intrinsics.areEqual(Job.class, String.class)) {
                                    untypedAsyncFunctionComponent10 = new StringAsyncFunctionComponent("confirmAllAssignments", anyTypeArr21, function10);
                                } else {
                                    untypedAsyncFunctionComponent10 = new UntypedAsyncFunctionComponent("confirmAllAssignments", anyTypeArr21, function10);
                                }
                            } else {
                                untypedAsyncFunctionComponent10 = new FloatAsyncFunctionComponent("confirmAllAssignments", anyTypeArr21, function10);
                            }
                        } else {
                            untypedAsyncFunctionComponent10 = new DoubleAsyncFunctionComponent("confirmAllAssignments", anyTypeArr21, function10);
                        }
                    } else {
                        untypedAsyncFunctionComponent10 = new BoolAsyncFunctionComponent("confirmAllAssignments", anyTypeArr21, function10);
                    }
                } else {
                    untypedAsyncFunctionComponent10 = new IntAsyncFunctionComponent("confirmAllAssignments", anyTypeArr21, function10);
                }
                asyncFunctionWithPromiseComponent10 = untypedAsyncFunctionComponent10;
            }
            moduleDefinitionBuilder22.getAsyncFunctions().put("confirmAllAssignments", asyncFunctionWithPromiseComponent10);
            ModuleDefinitionBuilder moduleDefinitionBuilder23 = moduleDefinitionBuilder;
            TypeConverterProvider converters22 = moduleDefinitionBuilder23.getConverters();
            AnyType[] anyTypeArr22 = new AnyType[2];
            AnyType anyType30 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), false));
            if (anyType30 == null) {
                anyType30 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), false, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$23
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(String.class);
                    }
                }), converters22);
            }
            anyTypeArr22[0] = anyType30;
            AnyType anyType31 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Map.class), true));
            if (anyType31 == null) {
                anyType31 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Map.class), true, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$24
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(Map.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(String.class)), KTypeProjection.INSTANCE.invariant(Reflection.typeOf(Object.class)));
                    }
                }), converters22);
            }
            anyTypeArr22[1] = anyType31;
            AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent19 = new AsyncFunctionWithPromiseComponent("getPresentationResult", anyTypeArr22, new Function2<Object[], Promise, Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$25
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object[] objArr, Promise promise) {
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    Intrinsics.checkNotNullParameter(promise, "promise");
                    Object obj = objArr[0];
                    BuildersKt__Builders_commonKt.launch$default(this.this$0.getIoScope(), null, null, new SuperwallExpoModule$definition$1$22$1((String) obj, (Map) objArr[1], this.this$0, promise, null), 3, null);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                    invoke2(objArr, promise);
                    return Unit.INSTANCE;
                }
            });
            moduleDefinitionBuilder23.getAsyncFunctions().put("getPresentationResult", asyncFunctionWithPromiseComponent19);
            ModuleDefinitionBuilder moduleDefinitionBuilder24 = moduleDefinitionBuilder;
            TypeConverterProvider converters23 = moduleDefinitionBuilder24.getConverters();
            AnyType[] anyTypeArr23 = new AnyType[1];
            AnyType anyType32 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(List.class), false));
            if (anyType32 == null) {
                anyType32 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(List.class), false, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$Function$9
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(List.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(String.class)));
                    }
                }), converters23);
            }
            anyTypeArr23[0] = anyType32;
            ReturnTypeProvider returnTypeProvider5 = ReturnTypeProvider.INSTANCE;
            ReturnType returnType5 = returnTypeProvider5.getTypes().get(Reflection.getOrCreateKotlinClass(Unit.class));
            if (returnType5 == null) {
                returnType5 = new ReturnType(Reflection.getOrCreateKotlinClass(Unit.class));
                returnTypeProvider5.getTypes().put(Reflection.getOrCreateKotlinClass(Unit.class), returnType5);
            }
            moduleDefinitionBuilder24.getSyncFunctions().put("preloadPaywalls", new SyncFunctionComponent("preloadPaywalls", anyTypeArr23, returnType5, new Function1<Object[], Object>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$Function$10
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] objArr) {
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    Superwall.INSTANCE.getInstance().preloadPaywalls(CollectionsKt.toSet((List) objArr[0]));
                    return Unit.INSTANCE;
                }
            }));
            ModuleDefinitionBuilder moduleDefinitionBuilder25 = moduleDefinitionBuilder;
            AnyType[] anyTypeArr24 = new AnyType[0];
            ReturnTypeProvider returnTypeProvider6 = ReturnTypeProvider.INSTANCE;
            ReturnType returnType6 = returnTypeProvider6.getTypes().get(Reflection.getOrCreateKotlinClass(Object.class));
            if (returnType6 == null) {
                returnType6 = new ReturnType(Reflection.getOrCreateKotlinClass(Object.class));
                returnTypeProvider6.getTypes().put(Reflection.getOrCreateKotlinClass(Object.class), returnType6);
            }
            moduleDefinitionBuilder25.getSyncFunctions().put("preloadAllPaywalls", new SyncFunctionComponent("preloadAllPaywalls", anyTypeArr24, returnType6, new Function1<Object[], Object>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$FunctionWithoutArgs$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    Superwall.INSTANCE.getInstance().preloadAllPaywalls();
                    return Unit.INSTANCE;
                }
            }));
            ModuleDefinitionBuilder moduleDefinitionBuilder26 = moduleDefinitionBuilder;
            TypeConverterProvider converters24 = moduleDefinitionBuilder26.getConverters();
            AnyType[] anyTypeArr25 = new AnyType[1];
            AnyType anyType33 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), false));
            if (anyType33 == null) {
                anyType33 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), false, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$Function$11
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(String.class);
                    }
                }), converters24);
            }
            anyTypeArr25[0] = anyType33;
            ReturnTypeProvider returnTypeProvider7 = ReturnTypeProvider.INSTANCE;
            ReturnType returnType7 = returnTypeProvider7.getTypes().get(Reflection.getOrCreateKotlinClass(Unit.class));
            if (returnType7 == null) {
                returnType7 = new ReturnType(Reflection.getOrCreateKotlinClass(Unit.class));
                returnTypeProvider7.getTypes().put(Reflection.getOrCreateKotlinClass(Unit.class), returnType7);
            }
            moduleDefinitionBuilder26.getSyncFunctions().put("setLogLevel", new SyncFunctionComponent("setLogLevel", anyTypeArr25, returnType7, new Function1<Object[], Object>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$Function$12
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] objArr) {
                    LogLevel logLevel;
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    int i = 0;
                    String str = (String) objArr[0];
                    LogLevel[] logLevelArrValues = LogLevel.values();
                    int length = logLevelArrValues.length;
                    while (true) {
                        if (i >= length) {
                            logLevel = null;
                            break;
                        }
                        logLevel = logLevelArrValues[i];
                        if (StringsKt.equals(logLevel.toString(), str, true)) {
                            break;
                        }
                        i++;
                    }
                    if (logLevel != null) {
                        Superwall.INSTANCE.getInstance().setLogLevel(logLevel);
                    }
                    return Unit.INSTANCE;
                }
            }));
            ModuleDefinitionBuilder moduleDefinitionBuilder27 = moduleDefinitionBuilder;
            TypeConverterProvider converters25 = moduleDefinitionBuilder27.getConverters();
            AnyType[] anyTypeArr26 = new AnyType[1];
            AnyType anyType34 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Map.class), false));
            if (anyType34 == null) {
                anyType34 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Map.class), false, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$26
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(Map.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(String.class)), KTypeProjection.INSTANCE.invariant(Reflection.typeOf(String.class)));
                    }
                }), converters25);
            }
            anyTypeArr26[0] = anyType34;
            AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent20 = new AsyncFunctionWithPromiseComponent("setIntegrationAttributes", anyTypeArr26, new Function2<Object[], Promise, Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$27
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object[] objArr, Promise promise) {
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    Intrinsics.checkNotNullParameter(promise, "promise");
                    BuildersKt__Builders_commonKt.launch$default(this.this$0.getScope(), null, null, new SuperwallExpoModule$definition$1$26$1((Map) objArr[0], promise, null), 3, null);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                    invoke2(objArr, promise);
                    return Unit.INSTANCE;
                }
            });
            moduleDefinitionBuilder27.getAsyncFunctions().put("setIntegrationAttributes", asyncFunctionWithPromiseComponent20);
            ModuleDefinitionBuilder moduleDefinitionBuilder28 = moduleDefinitionBuilder;
            if (Intrinsics.areEqual(Promise.class, Promise.class)) {
                asyncFunctionWithPromiseComponent11 = new AsyncFunctionWithPromiseComponent("getIntegrationAttributes", new AnyType[0], new Function2<Object[], Promise, Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$31
                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                        invoke2(objArr, promise);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Object[] objArr, Promise promise) {
                        Intrinsics.checkNotNullParameter(objArr, "<unused var>");
                        Intrinsics.checkNotNullParameter(promise, "promise");
                        promise.resolve((Map<String, ? extends Object>) Superwall.INSTANCE.getInstance().getIntegrationAttributes());
                    }
                });
            } else {
                TypeConverterProvider converters26 = moduleDefinitionBuilder28.getConverters();
                AnyType[] anyTypeArr27 = new AnyType[1];
                AnyType anyType35 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Promise.class), false));
                if (anyType35 == null) {
                    anyType35 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Promise.class), false, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$32
                        @Override // kotlin.jvm.functions.Function0
                        public final KType invoke() {
                            return Reflection.typeOf(Promise.class);
                        }
                    }), converters26);
                }
                anyTypeArr27[0] = anyType35;
                Function1<Object[], Unit> function11 = new Function1<Object[], Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunction$33
                    @Override // kotlin.jvm.functions.Function1
                    public final Unit invoke(Object[] objArr) {
                        Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                        ((Promise) objArr[0]).resolve((Map<String, ? extends Object>) Superwall.INSTANCE.getInstance().getIntegrationAttributes());
                        return Unit.INSTANCE;
                    }
                };
                if (!Intrinsics.areEqual(Unit.class, Integer.TYPE)) {
                    if (!Intrinsics.areEqual(Unit.class, Boolean.TYPE)) {
                        if (!Intrinsics.areEqual(Unit.class, Double.TYPE)) {
                            if (!Intrinsics.areEqual(Unit.class, Float.TYPE)) {
                                if (Intrinsics.areEqual(Unit.class, String.class)) {
                                    untypedAsyncFunctionComponent11 = new StringAsyncFunctionComponent("getIntegrationAttributes", anyTypeArr27, function11);
                                } else {
                                    untypedAsyncFunctionComponent11 = new UntypedAsyncFunctionComponent("getIntegrationAttributes", anyTypeArr27, function11);
                                }
                            } else {
                                untypedAsyncFunctionComponent11 = new FloatAsyncFunctionComponent("getIntegrationAttributes", anyTypeArr27, function11);
                            }
                        } else {
                            untypedAsyncFunctionComponent11 = new DoubleAsyncFunctionComponent("getIntegrationAttributes", anyTypeArr27, function11);
                        }
                    } else {
                        untypedAsyncFunctionComponent11 = new BoolAsyncFunctionComponent("getIntegrationAttributes", anyTypeArr27, function11);
                    }
                } else {
                    untypedAsyncFunctionComponent11 = new IntAsyncFunctionComponent("getIntegrationAttributes", anyTypeArr27, function11);
                }
                asyncFunctionWithPromiseComponent11 = untypedAsyncFunctionComponent11;
            }
            moduleDefinitionBuilder28.getAsyncFunctions().put("getIntegrationAttributes", asyncFunctionWithPromiseComponent11);
            ModuleDefinitionBuilder moduleDefinitionBuilder29 = moduleDefinitionBuilder;
            TypeConverterProvider converters27 = moduleDefinitionBuilder29.getConverters();
            AnyType[] anyTypeArr28 = new AnyType[1];
            AnyType anyType36 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), false));
            if (anyType36 == null) {
                anyType36 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), false, new Function0<KType>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$28
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(String.class);
                    }
                }), converters27);
            }
            anyTypeArr28[0] = anyType36;
            AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent21 = new AsyncFunctionWithPromiseComponent("consume", anyTypeArr28, new Function2<Object[], Promise, Unit>() { // from class: expo.modules.superwallexpo.SuperwallExpoModule$definition$lambda$37$$inlined$AsyncFunctionWithPromise$29
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object[] objArr, Promise promise) {
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    Intrinsics.checkNotNullParameter(promise, "promise");
                    BuildersKt__Builders_commonKt.launch$default(this.this$0.getIoScope(), null, null, new SuperwallExpoModule$definition$1$28$1((String) objArr[0], this.this$0, promise, null), 3, null);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                    invoke2(objArr, promise);
                    return Unit.INSTANCE;
                }
            });
            moduleDefinitionBuilder29.getAsyncFunctions().put("consume", asyncFunctionWithPromiseComponent21);
            return moduleDefinitionBuilder.buildModule();
        } finally {
            Trace.endSection();
        }
    }
}
