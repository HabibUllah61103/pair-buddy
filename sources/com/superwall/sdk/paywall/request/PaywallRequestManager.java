package com.superwall.sdk.paywall.request;

import androidx.core.app.NotificationCompat;
import androidx.media3.container.MdtaMetadataEntry;
import com.facebook.imageutils.JfifUtil;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.analytics.internal.TrackingKt;
import com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent;
import com.superwall.sdk.analytics.internal.trackable.TrackableSuperwallEvent;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.misc.EitherKt;
import com.superwall.sdk.misc.IOScope;
import com.superwall.sdk.models.events.EventData;
import com.superwall.sdk.models.paywall.Paywall;
import com.superwall.sdk.network.Network;
import com.superwall.sdk.paywall.presentation.PaywallInfo;
import com.superwall.sdk.paywall.presentation.internal.request.ProductOverride;
import com.superwall.sdk.store.StoreKit;
import com.superwall.sdk.store.StoreManager;
import com.superwall.sdk.store.abstractions.product.StoreProduct;
import com.superwall.sdk.utilities.ErrorTrackingKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;

/* JADX INFO: compiled from: PaywallRequestManager.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001Bi\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012$\b\u0002\u0010\n\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000b\u0012\u001a\b\u0002\u0010\u000f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u00110\u0010¢\u0006\u0004\b\u0013\u0010\u0014J,\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u001e\u001a\u00020\u001f2\b\b\u0002\u0010 \u001a\u00020!H\u0086@¢\u0006\u0002\u0010\"J\u001e\u0010#\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001fH\u0082@¢\u0006\u0002\u0010%J&\u0010&\u001a\u00020\u000e2\u0006\u0010'\u001a\u00020\u00122\u0006\u0010$\u001a\u00020\u00192\u0006\u0010(\u001a\u00020!H\u0082@¢\u0006\u0002\u0010)J*\u0010*\u001a\f\u0012\u0004\u0012\u00020\u0019\u0012\u0002\b\u00030\u001c2\u0006\u0010\u001e\u001a\u00020\u001f2\b\b\u0002\u0010 \u001a\u00020!H\u0086@¢\u0006\u0002\u0010\"J*\u0010+\u001a\f\u0012\u0004\u0012\u00020\u0019\u0012\u0002\b\u00030\u001c2\u0006\u0010\u001e\u001a\u00020\u001f2\b\b\u0002\u0010 \u001a\u00020!H\u0082@¢\u0006\u0002\u0010\"J\u0018\u0010,\u001a\u00020\u000e2\b\u0010-\u001a\u0004\u0018\u00010.H\u0082@¢\u0006\u0002\u0010/J \u00100\u001a\u00020\u000e2\u0006\u00101\u001a\u0002022\b\u0010-\u001a\u0004\u0018\u00010.H\u0082@¢\u0006\u0002\u00103J\u001e\u00104\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001fH\u0086@¢\u0006\u0002\u0010%J\u001e\u00105\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001fH\u0082@¢\u0006\u0002\u0010%J\u001e\u00106\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001fH\u0082@¢\u0006\u0002\u0010%J \u00107\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u00192\b\u0010-\u001a\u0004\u0018\u00010.H\u0082@¢\u0006\u0002\u00108J\r\u00109\u001a\u00020\u000eH\u0000¢\u0006\u0002\b:J2\u0010;\u001a\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020<\u0018\u00010\u00112\u0014\u0010=\u001a\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020>\u0018\u00010\u0011H\u0082@¢\u0006\u0002\u0010?R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R,\u0010\n\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0015R \u0010\u000f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u00110\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u0016\u001a\u0014\u0012\u0004\u0012\u00020\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00190\u00180\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00190\u0017X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006@"}, d2 = {"Lcom/superwall/sdk/paywall/request/PaywallRequestManager;", "", "storeManager", "Lcom/superwall/sdk/store/StoreManager;", "network", "Lcom/superwall/sdk/network/Network;", "factory", "Lcom/superwall/sdk/paywall/request/PaywallRequestManagerDepFactory;", "ioScope", "Lcom/superwall/sdk/misc/IOScope;", "track", "Lkotlin/Function2;", "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;", "Lkotlin/coroutines/Continuation;", "", "getGlobalOverrides", "Lkotlin/Function0;", "", "", "<init>", "(Lcom/superwall/sdk/store/StoreManager;Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/paywall/request/PaywallRequestManagerDepFactory;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V", "Lkotlin/jvm/functions/Function2;", "activeTasks", "", "Lkotlinx/coroutines/Deferred;", "Lcom/superwall/sdk/models/paywall/Paywall;", "paywallsByHash", "getPaywall", "Lcom/superwall/sdk/misc/Either;", "", "request", "Lcom/superwall/sdk/paywall/request/PaywallRequest;", "isPreloading", "", "(Lcom/superwall/sdk/paywall/request/PaywallRequest;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updatePaywall", "paywall", "(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/paywall/request/PaywallRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "saveRequestHash", "requestHash", "isDebuggerLaunched", "(Ljava/lang/String;Lcom/superwall/sdk/models/paywall/Paywall;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getRawPaywall", "getPaywallResponse", "trackResponseStarted", NotificationCompat.CATEGORY_EVENT, "Lcom/superwall/sdk/models/events/EventData;", "(Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "trackResponseLoaded", "paywallInfo", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "addProducts", "getProducts", "trackProductsLoadStart", "trackProductsLoadFinish", "(Lcom/superwall/sdk/models/paywall/Paywall;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "resetCache", "resetCache$superwall_release", "convertProductOverrides", "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;", "productOverrides", "Lcom/superwall/sdk/paywall/presentation/internal/request/ProductOverride;", "(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PaywallRequestManager {
    private final Map<String, Deferred<Paywall>> activeTasks;
    private final PaywallRequestManagerDepFactory factory;
    private final Function0<Map<String, String>> getGlobalOverrides;
    private final IOScope ioScope;
    private final Network network;
    private final Map<String, Paywall> paywallsByHash;
    private final StoreManager storeManager;
    private final Function2<TrackableSuperwallEvent, Continuation<? super Unit>, Object> track;

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.request.PaywallRequestManager$convertProductOverrides$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallRequestManager.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.request.PaywallRequestManager", f = "PaywallRequestManager.kt", i = {0, 0}, l = {408}, m = "convertProductOverrides", n = {"productOverrides", "convertedProducts"}, s = {"L$0", "L$1"})
    static final class C05291 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C05291(Continuation<? super C05291> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PaywallRequestManager.this.convertProductOverrides(null, this);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.request.PaywallRequestManager$getPaywall$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallRequestManager.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.request.PaywallRequestManager", f = "PaywallRequestManager.kt", i = {}, l = {MdtaMetadataEntry.TYPE_INDICATOR_INT32}, m = "getPaywall", n = {}, s = {})
    static final class C05301 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C05301(Continuation<? super C05301> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PaywallRequestManager.this.getPaywall(null, false, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PaywallRequestManager(StoreManager storeManager, Network network, PaywallRequestManagerDepFactory factory, IOScope ioScope, Function2<? super TrackableSuperwallEvent, ? super Continuation<? super Unit>, ? extends Object> track, Function0<? extends Map<String, String>> getGlobalOverrides) {
        Intrinsics.checkNotNullParameter(storeManager, "storeManager");
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(ioScope, "ioScope");
        Intrinsics.checkNotNullParameter(track, "track");
        Intrinsics.checkNotNullParameter(getGlobalOverrides, "getGlobalOverrides");
        this.storeManager = storeManager;
        this.network = network;
        this.factory = factory;
        this.ioScope = ioScope;
        this.track = track;
        this.getGlobalOverrides = getGlobalOverrides;
        this.activeTasks = new LinkedHashMap();
        this.paywallsByHash = new LinkedHashMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: com.superwall.sdk.paywall.request.PaywallRequestManager$1, reason: invalid class name */
    /* JADX INFO: compiled from: PaywallRequestManager.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.request.PaywallRequestManager$1", f = "PaywallRequestManager.kt", i = {}, l = {50}, m = "invokeSuspend", n = {}, s = {})
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<TrackableSuperwallEvent, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(TrackableSuperwallEvent trackableSuperwallEvent, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(trackableSuperwallEvent, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                TrackableSuperwallEvent trackableSuperwallEvent = (TrackableSuperwallEvent) this.L$0;
                this.label = 1;
                if (TrackingKt.track(Superwall.INSTANCE.getInstance(), trackableSuperwallEvent, this) == coroutine_suspended) {
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

    public /* synthetic */ PaywallRequestManager(StoreManager storeManager, Network network, PaywallRequestManagerDepFactory paywallRequestManagerDepFactory, IOScope iOScope, AnonymousClass1 anonymousClass1, Function0 function0, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(storeManager, network, paywallRequestManagerDepFactory, iOScope, (i & 16) != 0 ? new AnonymousClass1(null) : anonymousClass1, (i & 32) != 0 ? new Function0() { // from class: com.superwall.sdk.paywall.request.PaywallRequestManager$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PaywallRequestManager._init_$lambda$0();
            }
        } : function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map _init_$lambda$0() {
        return Superwall.INSTANCE.getInstance().getOverrideProductsByName();
    }

    public static /* synthetic */ Object getPaywall$default(PaywallRequestManager paywallRequestManager, PaywallRequest paywallRequest, boolean z, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return paywallRequestManager.getPaywall(paywallRequest, z, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object getPaywall(PaywallRequest paywallRequest, boolean z, Continuation<? super Either<Paywall, Throwable>> continuation) {
        C05301 c05301;
        if (continuation instanceof C05301) {
            c05301 = (C05301) continuation;
            if ((c05301.label & Integer.MIN_VALUE) != 0) {
                c05301.label -= Integer.MIN_VALUE;
            } else {
                c05301 = new C05301(continuation);
            }
        } else {
            c05301 = new C05301(continuation);
        }
        Object objWithContext = c05301.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c05301.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(objWithContext);
                CoroutineContext coroutineContext = this.ioScope.getCoroutineContext();
                PaywallRequestManager$getPaywall$2$1 paywallRequestManager$getPaywall$2$1 = new PaywallRequestManager$getPaywall$2$1(this, paywallRequest, z, null);
                c05301.label = 1;
                objWithContext = BuildersKt.withContext(coroutineContext, paywallRequestManager$getPaywall$2$1, c05301);
                if (objWithContext == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(objWithContext);
            }
            return new Either.Success((Paywall) objWithContext);
        } catch (Throwable th) {
            if (ErrorTrackingKt.shouldLog(th) && Superwall.INSTANCE.getInitialized()) {
                ErrorTrackingKt.trackError(Superwall.INSTANCE.getInstance(), th);
            }
            return new Either.Failure(th);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.request.PaywallRequestManager$updatePaywall$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallRequestManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/models/paywall/Paywall;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.request.PaywallRequestManager$updatePaywall$2", f = "PaywallRequestManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C05392 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Paywall>, Object> {
        final /* synthetic */ Paywall $paywall;
        final /* synthetic */ PaywallRequest $request;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05392(Paywall paywall, PaywallRequest paywallRequest, Continuation<? super C05392> continuation) {
            super(2, continuation);
            this.$paywall = paywall;
            this.$request = paywallRequest;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C05392(this.$paywall, this.$request, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Paywall> continuation) {
            return ((C05392) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            Paywall paywall = this.$paywall;
            paywall.setExperiment(this.$request.getResponseIdentifiers().getExperiment());
            paywall.setPresentationSourceType(this.$request.getPresentationSourceType());
            return paywall;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object updatePaywall(Paywall paywall, PaywallRequest paywallRequest, Continuation<? super Paywall> continuation) {
        return BuildersKt.withContext(this.ioScope.getCoroutineContext(), new C05392(paywall, paywallRequest, null), continuation);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.request.PaywallRequestManager$saveRequestHash$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallRequestManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.request.PaywallRequestManager$saveRequestHash$2", f = "PaywallRequestManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C05342 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $isDebuggerLaunched;
        final /* synthetic */ Paywall $paywall;
        final /* synthetic */ String $requestHash;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05342(String str, boolean z, Paywall paywall, Continuation<? super C05342> continuation) {
            super(2, continuation);
            this.$requestHash = str;
            this.$isDebuggerLaunched = z;
            this.$paywall = paywall;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaywallRequestManager.this.new C05342(this.$requestHash, this.$isDebuggerLaunched, this.$paywall, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05342) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                PaywallRequestManager.this.activeTasks.remove(this.$requestHash);
                if (!this.$isDebuggerLaunched) {
                    PaywallRequestManager.this.paywallsByHash.put(this.$requestHash, this.$paywall);
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object saveRequestHash(String str, Paywall paywall, boolean z, Continuation<? super Unit> continuation) {
        Object objWithContext = BuildersKt.withContext(this.ioScope.getCoroutineContext(), new C05342(str, z, paywall, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    public static /* synthetic */ Object getRawPaywall$default(PaywallRequestManager paywallRequestManager, PaywallRequest paywallRequest, boolean z, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return paywallRequestManager.getRawPaywall(paywallRequest, z, continuation);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.request.PaywallRequestManager$getRawPaywall$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallRequestManager.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\f\u0012\u0004\u0012\u00020\u0002\u0012\u0002\b\u00030\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/misc/Either;", "Lcom/superwall/sdk/models/paywall/Paywall;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.request.PaywallRequestManager$getRawPaywall$2", f = "PaywallRequestManager.kt", i = {}, l = {JfifUtil.MARKER_RST0, 209, 210}, m = "invokeSuspend", n = {}, s = {})
    static final class C05332 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Either<? extends Paywall, ?>>, Object> {
        final /* synthetic */ boolean $isPreloading;
        final /* synthetic */ PaywallRequest $request;
        int label;
        final /* synthetic */ PaywallRequestManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05332(PaywallRequest paywallRequest, PaywallRequestManager paywallRequestManager, boolean z, Continuation<? super C05332> continuation) {
            super(2, continuation);
            this.$request = paywallRequest;
            this.this$0 = paywallRequestManager;
            this.$isPreloading = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C05332(this.$request, this.this$0, this.$isPreloading, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Either<? extends Paywall, ?>> continuation) {
            return invoke2(coroutineScope, (Continuation<? super Either<Paywall, ?>>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Either<Paywall, ?>> continuation) {
            return ((C05332) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:22:0x008f A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objThen;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.all, "!!getRawPaywall - " + this.$request.getResponseIdentifiers().getPaywallId(), null, null, 24, null);
                this.label = 1;
                if (this.this$0.trackResponseStarted(this.$request.getEventData(), this) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
            } else {
                if (i != 2) {
                    if (i != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                ResultKt.throwOnFailure(obj);
            }
            this.label = 3;
            objThen = EitherKt.then((Either) obj, new AnonymousClass1(this.$request, this.this$0, null), this);
            if (objThen != coroutine_suspended) {
                return coroutine_suspended;
            }
            return objThen;
            this.label = 2;
            obj = this.this$0.getPaywallResponse(this.$request, this.$isPreloading, this);
            if (obj != coroutine_suspended) {
                this.label = 3;
                objThen = EitherKt.then((Either) obj, new AnonymousClass1(this.$request, this.this$0, null), this);
                if (objThen != coroutine_suspended) {
                    return objThen;
                }
            }
            return coroutine_suspended;
        }

        /* JADX INFO: renamed from: com.superwall.sdk.paywall.request.PaywallRequestManager$getRawPaywall$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: PaywallRequestManager.kt */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/models/paywall/Paywall;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.superwall.sdk.paywall.request.PaywallRequestManager$getRawPaywall$2$1", f = "PaywallRequestManager.kt", i = {}, l = {JfifUtil.MARKER_RST7}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function2<Paywall, Continuation<? super Unit>, Object> {
            final /* synthetic */ PaywallRequest $request;
            /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ PaywallRequestManager this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(PaywallRequest paywallRequest, PaywallRequestManager paywallRequestManager, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$request = paywallRequest;
                this.this$0 = paywallRequestManager;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$request, this.this$0, continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Paywall paywall, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(paywall, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    PaywallInfo info = ((Paywall) this.L$0).getInfo(this.$request.getEventData());
                    this.label = 1;
                    if (this.this$0.trackResponseLoaded(info, this.$request.getEventData(), this) == coroutine_suspended) {
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
    }

    public final Object getRawPaywall(PaywallRequest paywallRequest, boolean z, Continuation<? super Either<Paywall, ?>> continuation) {
        return BuildersKt.withContext(this.ioScope.getCoroutineContext(), new C05332(paywallRequest, this, z, null), continuation);
    }

    static /* synthetic */ Object getPaywallResponse$default(PaywallRequestManager paywallRequestManager, PaywallRequest paywallRequest, boolean z, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return paywallRequestManager.getPaywallResponse(paywallRequest, z, continuation);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.request.PaywallRequestManager$getPaywallResponse$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallRequestManager.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\f\u0012\u0004\u0012\u00020\u0002\u0012\u0002\b\u00030\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/misc/Either;", "Lcom/superwall/sdk/models/paywall/Paywall;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.request.PaywallRequestManager$getPaywallResponse$2", f = "PaywallRequestManager.kt", i = {0, 0, 0, 1, 1, 1, 2}, l = {238, 242, 255}, m = "invokeSuspend", n = {"responseLoadStartTime", "paywallId", NotificationCompat.CATEGORY_EVENT, "responseLoadStartTime", "paywallId", NotificationCompat.CATEGORY_EVENT, NotificationCompat.CATEGORY_EVENT}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$0"})
    static final class C05312 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Either<? extends Paywall, ?>>, Object> {
        final /* synthetic */ boolean $isPreloading;
        final /* synthetic */ PaywallRequest $request;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        final /* synthetic */ PaywallRequestManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05312(PaywallRequest paywallRequest, PaywallRequestManager paywallRequestManager, boolean z, Continuation<? super C05312> continuation) {
            super(2, continuation);
            this.$request = paywallRequest;
            this.this$0 = paywallRequestManager;
            this.$isPreloading = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C05312(this.$request, this.this$0, this.$isPreloading, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Either<? extends Paywall, ?>> continuation) {
            return invoke2(coroutineScope, (Continuation<? super Either<Paywall, ?>>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Either<Paywall, ?>> continuation) {
            return ((C05312) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:24:0x00b3  */
        /* JADX WARN: Code duplicated, block: B:28:0x00e0  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Date date;
            String paywallId;
            EventData eventData;
            String str;
            Date date2;
            Either success;
            final Date date3;
            Object objThen;
            String str2;
            final EventData eventData2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    eventData = (EventData) this.L$2;
                    str = (String) this.L$1;
                    date = (Date) this.L$0;
                    ResultKt.throwOnFailure(obj);
                } else {
                    if (i == 2) {
                        eventData = (EventData) this.L$2;
                        str2 = (String) this.L$1;
                        date3 = (Date) this.L$0;
                        ResultKt.throwOnFailure(obj);
                        final boolean z = this.$isPreloading;
                        final PaywallRequestManager paywallRequestManager = this.this$0;
                        final PaywallRequest paywallRequest = this.$request;
                        this.L$0 = eventData;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.label = 3;
                        obj = EitherKt.then(EitherKt.map((Either) obj, new Function1() { // from class: com.superwall.sdk.paywall.request.PaywallRequestManager$getPaywallResponse$2$$ExternalSyntheticLambda0
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj2) {
                                return PaywallRequestManager.C05312.invokeSuspend$lambda$1(z, paywallRequestManager, paywallRequest, date3, (Paywall) obj2);
                            }
                        }), new AnonymousClass4(str2, null), this);
                        if (obj != coroutine_suspended) {
                            eventData2 = eventData;
                        }
                        return coroutine_suspended;
                    }
                    if (i != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    eventData2 = (EventData) this.L$0;
                    ResultKt.throwOnFailure(obj);
                }
                return EitherKt.mapError((Either) obj, new Function1<?, Throwable>() { // from class: com.superwall.sdk.paywall.request.PaywallRequestManager.getPaywallResponse.2.5
                    @Override // kotlin.jvm.functions.Function1
                    public final Throwable invoke(Throwable it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        return PaywallLogic.handlePaywallError$default(PaywallLogic.INSTANCE, it, eventData2, null, 4, null);
                    }
                });
            }
            ResultKt.throwOnFailure(obj);
            date = new Date();
            paywallId = this.$request.getResponseIdentifiers().getPaywallId();
            eventData = this.$request.getEventData();
            Paywall paywallMakeStaticPaywall = this.this$0.factory.makeStaticPaywall(paywallId, this.$request.isDebuggerLaunched());
            if (paywallMakeStaticPaywall != null) {
                date2 = date;
                success = new Either.Success(paywallMakeStaticPaywall);
                date3 = date2;
                this.L$0 = date3;
                this.L$1 = paywallId;
                this.L$2 = eventData;
                this.label = 2;
                objThen = EitherKt.then(success, new C01202(paywallId, null), this);
                if (objThen != coroutine_suspended) {
                    str2 = paywallId;
                    obj = objThen;
                    final boolean z2 = this.$isPreloading;
                    final PaywallRequestManager paywallRequestManager2 = this.this$0;
                    final PaywallRequest paywallRequest2 = this.$request;
                    this.L$0 = eventData;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.label = 3;
                    obj = EitherKt.then(EitherKt.map((Either) obj, new Function1() { // from class: com.superwall.sdk.paywall.request.PaywallRequestManager$getPaywallResponse$2$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            return PaywallRequestManager.C05312.invokeSuspend$lambda$1(z2, paywallRequestManager2, paywallRequest2, date3, (Paywall) obj2);
                        }
                    }), new AnonymousClass4(str2, null), this);
                    if (obj != coroutine_suspended) {
                        eventData2 = eventData;
                        return EitherKt.mapError((Either) obj, new Function1<?, Throwable>() { // from class: com.superwall.sdk.paywall.request.PaywallRequestManager.getPaywallResponse.2.5
                            @Override // kotlin.jvm.functions.Function1
                            public final Throwable invoke(Throwable it) {
                                Intrinsics.checkNotNullParameter(it, "it");
                                return PaywallLogic.handlePaywallError$default(PaywallLogic.INSTANCE, it, eventData2, null, 4, null);
                            }
                        });
                    }
                }
            } else {
                this.L$0 = date;
                this.L$1 = paywallId;
                this.L$2 = eventData;
                this.label = 1;
                Object paywall = this.this$0.network.getPaywall(paywallId, eventData, this);
                if (paywall != coroutine_suspended) {
                    str = paywallId;
                    obj = paywall;
                }
            }
            return coroutine_suspended;
            date2 = date;
            success = (Either) obj;
            paywallId = str;
            date3 = date2;
            this.L$0 = date3;
            this.L$1 = paywallId;
            this.L$2 = eventData;
            this.label = 2;
            objThen = EitherKt.then(success, new C01202(paywallId, null), this);
            if (objThen != coroutine_suspended) {
                str2 = paywallId;
                obj = objThen;
                final boolean z3 = this.$isPreloading;
                final PaywallRequestManager paywallRequestManager3 = this.this$0;
                final PaywallRequest paywallRequest3 = this.$request;
                this.L$0 = eventData;
                this.L$1 = null;
                this.L$2 = null;
                this.label = 3;
                obj = EitherKt.then(EitherKt.map((Either) obj, new Function1() { // from class: com.superwall.sdk.paywall.request.PaywallRequestManager$getPaywallResponse$2$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return PaywallRequestManager.C05312.invokeSuspend$lambda$1(z3, paywallRequestManager3, paywallRequest3, date3, (Paywall) obj2);
                    }
                }), new AnonymousClass4(str2, null), this);
                if (obj != coroutine_suspended) {
                    eventData2 = eventData;
                    return EitherKt.mapError((Either) obj, new Function1<?, Throwable>() { // from class: com.superwall.sdk.paywall.request.PaywallRequestManager.getPaywallResponse.2.5
                        @Override // kotlin.jvm.functions.Function1
                        public final Throwable invoke(Throwable it) {
                            Intrinsics.checkNotNullParameter(it, "it");
                            return PaywallLogic.handlePaywallError$default(PaywallLogic.INSTANCE, it, eventData2, null, 4, null);
                        }
                    });
                }
            }
            return coroutine_suspended;
        }

        /* JADX INFO: renamed from: com.superwall.sdk.paywall.request.PaywallRequestManager$getPaywallResponse$2$2, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: PaywallRequestManager.kt */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/models/paywall/Paywall;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.superwall.sdk.paywall.request.PaywallRequestManager$getPaywallResponse$2$2", f = "PaywallRequestManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class C01202 extends SuspendLambda implements Function2<Paywall, Continuation<? super Unit>, Object> {
            final /* synthetic */ String $paywallId;
            /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C01202(String str, Continuation<? super C01202> continuation) {
                super(2, continuation);
                this.$paywallId = str;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                C01202 c01202 = new C01202(this.$paywallId, continuation);
                c01202.L$0 = obj;
                return c01202;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Paywall paywall, Continuation<? super Unit> continuation) {
                return ((C01202) create(paywall, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.all, "!!getPaywallResponse - " + this.$paywallId + " - " + ((Paywall) this.L$0), null, null, 24, null);
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Paywall invokeSuspend$lambda$1(boolean z, PaywallRequestManager paywallRequestManager, PaywallRequest paywallRequest, Date date, Paywall paywall) {
            if (z && Intrinsics.areEqual(paywall.getIdentifier(), paywallRequestManager.factory.activePaywallId())) {
                return paywall;
            }
            paywall.setExperiment(paywallRequest.getResponseIdentifiers().getExperiment());
            paywall.getResponseLoadingInfo().setStartAt(date);
            paywall.getResponseLoadingInfo().setEndAt(new Date());
            return paywall;
        }

        /* JADX INFO: renamed from: com.superwall.sdk.paywall.request.PaywallRequestManager$getPaywallResponse$2$4, reason: invalid class name */
        /* JADX INFO: compiled from: PaywallRequestManager.kt */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/models/paywall/Paywall;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.superwall.sdk.paywall.request.PaywallRequestManager$getPaywallResponse$2$4", f = "PaywallRequestManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass4 extends SuspendLambda implements Function2<Paywall, Continuation<? super Unit>, Object> {
            final /* synthetic */ String $paywallId;
            /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass4(String str, Continuation<? super AnonymousClass4> continuation) {
                super(2, continuation);
                this.$paywallId = str;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                AnonymousClass4 anonymousClass4 = new AnonymousClass4(this.$paywallId, continuation);
                anonymousClass4.L$0 = obj;
                return anonymousClass4;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Paywall paywall, Continuation<? super Unit> continuation) {
                return ((AnonymousClass4) create(paywall, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                Paywall paywall = (Paywall) this.L$0;
                Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.all, "!!getPaywallResponse - " + this.$paywallId + " - " + paywall + " - " + paywall.getExperiment(), null, null, 24, null);
                return Unit.INSTANCE;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object getPaywallResponse(PaywallRequest paywallRequest, boolean z, Continuation<? super Either<Paywall, ?>> continuation) {
        return BuildersKt.withContext(this.ioScope.getCoroutineContext(), new C05312(paywallRequest, this, z, null), continuation);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.request.PaywallRequestManager$trackResponseStarted$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallRequestManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.request.PaywallRequestManager$trackResponseStarted$2", f = "PaywallRequestManager.kt", i = {}, l = {277}, m = "invokeSuspend", n = {}, s = {})
    static final class C05382 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ EventData $event;
        int label;
        final /* synthetic */ PaywallRequestManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05382(EventData eventData, PaywallRequestManager paywallRequestManager, Continuation<? super C05382> continuation) {
            super(2, continuation);
            this.$event = eventData;
            this.this$0 = paywallRequestManager;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C05382(this.$event, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05382) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                InternalSuperwallEvent.PaywallLoad paywallLoad = new InternalSuperwallEvent.PaywallLoad(new InternalSuperwallEvent.PaywallLoad.State.Start(), this.$event);
                Function2 function2 = this.this$0.track;
                this.label = 1;
                if (function2.invoke(paywallLoad, this) == coroutine_suspended) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public final Object trackResponseStarted(EventData eventData, Continuation<? super Unit> continuation) {
        Object objWithContext = BuildersKt.withContext(this.ioScope.getCoroutineContext(), new C05382(eventData, this, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.request.PaywallRequestManager$trackResponseLoaded$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallRequestManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.request.PaywallRequestManager$trackResponseLoaded$2", f = "PaywallRequestManager.kt", i = {}, l = {289}, m = "invokeSuspend", n = {}, s = {})
    static final class C05372 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ EventData $event;
        final /* synthetic */ PaywallInfo $paywallInfo;
        int label;
        final /* synthetic */ PaywallRequestManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05372(PaywallInfo paywallInfo, EventData eventData, PaywallRequestManager paywallRequestManager, Continuation<? super C05372> continuation) {
            super(2, continuation);
            this.$paywallInfo = paywallInfo;
            this.$event = eventData;
            this.this$0 = paywallRequestManager;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C05372(this.$paywallInfo, this.$event, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05372) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                InternalSuperwallEvent.PaywallLoad paywallLoad = new InternalSuperwallEvent.PaywallLoad(new InternalSuperwallEvent.PaywallLoad.State.Complete(this.$paywallInfo), this.$event);
                Function2 function2 = this.this$0.track;
                this.label = 1;
                if (function2.invoke(paywallLoad, this) == coroutine_suspended) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public final Object trackResponseLoaded(PaywallInfo paywallInfo, EventData eventData, Continuation<? super Unit> continuation) {
        Object objWithContext = BuildersKt.withContext(this.ioScope.getCoroutineContext(), new C05372(paywallInfo, eventData, this, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.request.PaywallRequestManager$addProducts$2, reason: invalid class name */
    /* JADX INFO: compiled from: PaywallRequestManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/models/paywall/Paywall;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.request.PaywallRequestManager$addProducts$2", f = "PaywallRequestManager.kt", i = {}, l = {299, 302, 306}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Paywall>, Object> {
        final /* synthetic */ Paywall $paywall;
        final /* synthetic */ PaywallRequest $request;
        int label;
        final /* synthetic */ PaywallRequestManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Paywall paywall, PaywallRequestManager paywallRequestManager, PaywallRequest paywallRequest, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$paywall = paywall;
            this.this$0 = paywallRequestManager;
            this.$request = paywallRequest;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$paywall, this.this$0, this.$request, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Paywall> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x005f, code lost:
        
            if (r8 == r0) goto L20;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r7.label
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L25
                if (r1 == r4) goto L21
                if (r1 == r3) goto L1d
                if (r1 != r2) goto L15
                kotlin.ResultKt.throwOnFailure(r8)
                goto L62
            L15:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L1d:
                kotlin.ResultKt.throwOnFailure(r8)
                goto L4c
            L21:
                kotlin.ResultKt.throwOnFailure(r8)
                goto L3a
            L25:
                kotlin.ResultKt.throwOnFailure(r8)
                com.superwall.sdk.models.paywall.Paywall r8 = r7.$paywall
                com.superwall.sdk.paywall.request.PaywallRequestManager r1 = r7.this$0
                com.superwall.sdk.paywall.request.PaywallRequest r5 = r7.$request
                r6 = r7
                kotlin.coroutines.Continuation r6 = (kotlin.coroutines.Continuation) r6
                r7.label = r4
                java.lang.Object r8 = com.superwall.sdk.paywall.request.PaywallRequestManager.access$trackProductsLoadStart(r1, r8, r5, r6)
                if (r8 != r0) goto L3a
                goto L61
            L3a:
                com.superwall.sdk.models.paywall.Paywall r8 = (com.superwall.sdk.models.paywall.Paywall) r8
                com.superwall.sdk.paywall.request.PaywallRequestManager r1 = r7.this$0
                com.superwall.sdk.paywall.request.PaywallRequest r4 = r7.$request
                r5 = r7
                kotlin.coroutines.Continuation r5 = (kotlin.coroutines.Continuation) r5
                r7.label = r3
                java.lang.Object r8 = com.superwall.sdk.paywall.request.PaywallRequestManager.access$getProducts(r1, r8, r4, r5)
                if (r8 != r0) goto L4c
                goto L61
            L4c:
                com.superwall.sdk.models.paywall.Paywall r8 = (com.superwall.sdk.models.paywall.Paywall) r8
                com.superwall.sdk.paywall.request.PaywallRequestManager r1 = r7.this$0
                com.superwall.sdk.paywall.request.PaywallRequest r3 = r7.$request
                com.superwall.sdk.models.events.EventData r3 = r3.getEventData()
                r4 = r7
                kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
                r7.label = r2
                java.lang.Object r8 = com.superwall.sdk.paywall.request.PaywallRequestManager.access$trackProductsLoadFinish(r1, r8, r3, r4)
                if (r8 != r0) goto L62
            L61:
                return r0
            L62:
                com.superwall.sdk.models.paywall.Paywall r8 = (com.superwall.sdk.models.paywall.Paywall) r8
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.paywall.request.PaywallRequestManager.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public final Object addProducts(Paywall paywall, PaywallRequest paywallRequest, Continuation<? super Paywall> continuation) {
        return BuildersKt.withContext(this.ioScope.getCoroutineContext(), new AnonymousClass2(paywall, this, paywallRequest, null), continuation);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.request.PaywallRequestManager$getProducts$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallRequestManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/models/paywall/Paywall;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.request.PaywallRequestManager$getProducts$2", f = "PaywallRequestManager.kt", i = {0, 1}, l = {326, 333}, m = "invokeSuspend", n = {"paywall", "paywall"}, s = {"L$0", "L$0"})
    static final class C05322 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Paywall>, Object> {
        final /* synthetic */ Paywall $paywall;
        final /* synthetic */ PaywallRequest $request;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ PaywallRequestManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05322(Paywall paywall, PaywallRequest paywallRequest, PaywallRequestManager paywallRequestManager, Continuation<? super C05322> continuation) {
            super(2, continuation);
            this.$paywall = paywall;
            this.$request = paywallRequest;
            this.this$0 = paywallRequestManager;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C05322 c05322 = new C05322(this.$paywall, this.$request, this.this$0, continuation);
            c05322.L$0 = obj;
            return c05322;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Paywall> continuation) {
            return ((C05322) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:26:0x00ab  */
        /* JADX WARN: Code duplicated, block: B:29:0x00b4  */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x008e, code lost:
        
            if (r10 == r0) goto L25;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r10) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 244
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.paywall.request.PaywallRequestManager.C05322.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object getProducts(Paywall paywall, PaywallRequest paywallRequest, Continuation<? super Paywall> continuation) {
        return BuildersKt.withContext(this.ioScope.getCoroutineContext(), new C05322(paywall, paywallRequest, this, null), continuation);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.request.PaywallRequestManager$trackProductsLoadStart$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallRequestManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/models/paywall/Paywall;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.request.PaywallRequestManager$trackProductsLoadStart$2", f = "PaywallRequestManager.kt", i = {0}, l = {372}, m = "invokeSuspend", n = {"paywall"}, s = {"L$0"})
    static final class C05362 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Paywall>, Object> {
        final /* synthetic */ Paywall $paywall;
        final /* synthetic */ PaywallRequest $request;
        Object L$0;
        int label;
        final /* synthetic */ PaywallRequestManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05362(Paywall paywall, PaywallRequest paywallRequest, PaywallRequestManager paywallRequestManager, Continuation<? super C05362> continuation) {
            super(2, continuation);
            this.$paywall = paywall;
            this.$request = paywallRequest;
            this.this$0 = paywallRequestManager;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C05362(this.$paywall, this.$request, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Paywall> continuation) {
            return ((C05362) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                Paywall paywall = (Paywall) this.L$0;
                ResultKt.throwOnFailure(obj);
                return paywall;
            }
            ResultKt.throwOnFailure(obj);
            Paywall paywall2 = this.$paywall;
            paywall2.getProductsLoadingInfo().setStartAt(new Date());
            InternalSuperwallEvent.PaywallProductsLoad paywallProductsLoad = new InternalSuperwallEvent.PaywallProductsLoad(new InternalSuperwallEvent.PaywallProductsLoad.State.Start(), paywall2.getInfo(this.$request.getEventData()), this.$request.getEventData());
            Function2 function2 = this.this$0.track;
            this.L$0 = paywall2;
            this.label = 1;
            return function2.invoke(paywallProductsLoad, this) == coroutine_suspended ? coroutine_suspended : paywall2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object trackProductsLoadStart(Paywall paywall, PaywallRequest paywallRequest, Continuation<? super Paywall> continuation) {
        return BuildersKt.withContext(this.ioScope.getCoroutineContext(), new C05362(paywall, paywallRequest, this, null), continuation);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.request.PaywallRequestManager$trackProductsLoadFinish$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PaywallRequestManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/models/paywall/Paywall;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.request.PaywallRequestManager$trackProductsLoadFinish$2", f = "PaywallRequestManager.kt", i = {0}, l = {390}, m = "invokeSuspend", n = {"paywall"}, s = {"L$0"})
    static final class C05352 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Paywall>, Object> {
        final /* synthetic */ EventData $event;
        final /* synthetic */ Paywall $paywall;
        Object L$0;
        int label;
        final /* synthetic */ PaywallRequestManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05352(Paywall paywall, EventData eventData, PaywallRequestManager paywallRequestManager, Continuation<? super C05352> continuation) {
            super(2, continuation);
            this.$paywall = paywall;
            this.$event = eventData;
            this.this$0 = paywallRequestManager;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C05352(this.$paywall, this.$event, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Paywall> continuation) {
            return ((C05352) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                Paywall paywall = (Paywall) this.L$0;
                ResultKt.throwOnFailure(obj);
                return paywall;
            }
            ResultKt.throwOnFailure(obj);
            Paywall paywall2 = this.$paywall;
            paywall2.getProductsLoadingInfo().setEndAt(new Date());
            InternalSuperwallEvent.PaywallProductsLoad paywallProductsLoad = new InternalSuperwallEvent.PaywallProductsLoad(new InternalSuperwallEvent.PaywallProductsLoad.State.Complete(), paywall2.getInfo(this.$event), this.$event);
            Function2 function2 = this.this$0.track;
            this.L$0 = paywall2;
            this.label = 1;
            return function2.invoke(paywallProductsLoad, this) == coroutine_suspended ? coroutine_suspended : paywall2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object trackProductsLoadFinish(Paywall paywall, EventData eventData, Continuation<? super Paywall> continuation) {
        return BuildersKt.withContext(this.ioScope.getCoroutineContext(), new C05352(paywall, eventData, this, null), continuation);
    }

    public final void resetCache$superwall_release() {
        this.paywallsByHash.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object convertProductOverrides(Map<String, ? extends ProductOverride> map, Continuation<? super Map<String, StoreProduct>> continuation) {
        C05291 c05291;
        LinkedHashMap linkedHashMap;
        Object productsWithoutPaywall$default;
        String productIdentifier;
        if (continuation instanceof C05291) {
            c05291 = (C05291) continuation;
            if ((c05291.label & Integer.MIN_VALUE) != 0) {
                c05291.label -= Integer.MIN_VALUE;
            } else {
                c05291 = new C05291(continuation);
            }
        } else {
            c05291 = new C05291(continuation);
        }
        C05291 c05292 = c05291;
        Object obj = c05292.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c05292.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            if (map == null || map.isEmpty()) {
                return null;
            }
            linkedHashMap = new LinkedHashMap();
            StoreManager storeManager = this.storeManager;
            Collection<? extends ProductOverride> collectionValues = map.values();
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(collectionValues, 10));
            for (ProductOverride productOverride : collectionValues) {
                if (productOverride instanceof ProductOverride.ById) {
                    productIdentifier = ((ProductOverride.ById) productOverride).getProductId();
                } else {
                    if (!(productOverride instanceof ProductOverride.ByProduct)) {
                        throw new NoWhenBranchMatchedException();
                    }
                    productIdentifier = ((ProductOverride.ByProduct) productOverride).getProduct().getProductIdentifier();
                }
                arrayList.add(productIdentifier);
            }
            List list = CollectionsKt.toList(arrayList);
            c05292.L$0 = map;
            c05292.L$1 = linkedHashMap;
            c05292.label = 1;
            productsWithoutPaywall$default = StoreKit.DefaultImpls.getProductsWithoutPaywall$default(storeManager, list, null, c05292, 2, null);
            if (productsWithoutPaywall$default == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Map map2 = (Map) c05292.L$1;
            Map<String, ? extends ProductOverride> map3 = (Map) c05292.L$0;
            ResultKt.throwOnFailure(obj);
            productsWithoutPaywall$default = obj;
            linkedHashMap = map2;
            map = map3;
        }
        Map map4 = (Map) productsWithoutPaywall$default;
        for (Map.Entry<String, ? extends ProductOverride> entry : map.entrySet()) {
            String key = entry.getKey();
            ProductOverride value = entry.getValue();
            if (value instanceof ProductOverride.ByProduct) {
                linkedHashMap.put(key, ((ProductOverride.ByProduct) value).getProduct());
            } else {
                if (!(value instanceof ProductOverride.ById)) {
                    throw new NoWhenBranchMatchedException();
                }
                linkedHashMap.put(key, (StoreProduct) map4.get(((ProductOverride.ById) value).getProductId()));
            }
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            if (entry2.getValue() != null) {
                linkedHashMap2.put(entry2.getKey(), entry2.getValue());
            }
        }
        if (linkedHashMap2.isEmpty()) {
            return null;
        }
        return linkedHashMap2;
    }
}
