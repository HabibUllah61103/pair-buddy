package com.superwall.sdk.identity;

import com.facebook.react.animated.InterpolationAnimatedNode;
import com.superwall.sdk.SdkContext;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.analytics.internal.TrackingKt;
import com.superwall.sdk.analytics.internal.trackable.TrackableSuperwallEvent;
import com.superwall.sdk.config.options.SuperwallOptions;
import com.superwall.sdk.misc.IOScope;
import com.superwall.sdk.misc.primitives.Reducer;
import com.superwall.sdk.misc.primitives.StateActor;
import com.superwall.sdk.misc.primitives.TypedAction;
import com.superwall.sdk.storage.Storable;
import com.superwall.sdk.storage.Storage;
import com.superwall.sdk.web.WebPaywallRedeemer;
import expo.modules.interfaces.permissions.PermissionsResponse;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: compiled from: IdentityManager.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001BÊ\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0007\u0012-\u0010\t\u001a)\u0012\u001f\u0012\u001d\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u000f0\u0007\u0012\u000e\b\u0002\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0011\u0012$\b\u0002\u0010\u0012\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0013\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\u0011\u0012\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00190\u0011\u0012\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u001c0\u001b\u0012\u0006\u0010\u001d\u001a\u00020\u001e¢\u0006\u0004\b\u001f\u0010 J\u000e\u0010M\u001a\u00020\u000f2\u0006\u0010N\u001a\u00020EJ\u001a\u0010O\u001a\u00020\u000f2\u0006\u0010?\u001a\u00020\b2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010PJ\u0006\u0010Q\u001a\u00020\u000fJ&\u0010R\u001a\u00020\u000f2\u0014\u0010S\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\n2\b\b\u0002\u0010T\u001a\u00020EJ-\u0010U\u001a\u00020\u000f2\u0014\u0010S\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\n2\b\b\u0002\u0010T\u001a\u00020EH\u0000¢\u0006\u0002\bVJ\u000e\u0010W\u001a\u00020\u001cH\u0086@¢\u0006\u0002\u0010XR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R;\u0010\t\u001a)\u0012\u001f\u0012\u001d\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u000f0\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0011X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R2\u0010\u0012\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0013X\u0096\u0004¢\u0006\n\n\u0002\u0010)\u001a\u0004\b'\u0010(R\u0014\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00190\u0011X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010&R \u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u001c0\u001bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R\u0014\u0010\u001d\u001a\u00020\u001eX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.R\u0014\u0010/\u001a\u0002008VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b1\u00102R\u0014\u00103\u001a\u00020\u001c8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b4\u00105R\u0013\u00106\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b7\u00108R\u0011\u00109\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b:\u00108R\u0011\u0010;\u001a\u00020<8F¢\u0006\u0006\u001a\u0004\b=\u0010>R\u0011\u0010?\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b@\u00108R\u001d\u0010A\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u000b0\n8F¢\u0006\u0006\u001a\u0004\bB\u0010CR\u0011\u0010D\u001a\u00020E8F¢\u0006\u0006\u001a\u0004\bD\u0010FR\u0011\u0010G\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\bH\u00108R\u0017\u0010I\u001a\b\u0012\u0004\u0012\u00020E0J8F¢\u0006\u0006\u001a\u0004\bK\u0010L¨\u0006Y"}, d2 = {"Lcom/superwall/sdk/identity/IdentityManager;", "Lcom/superwall/sdk/identity/IdentityContext;", "storage", "Lcom/superwall/sdk/storage/Storage;", "ioScope", "Lcom/superwall/sdk/misc/IOScope;", "stringToSha", "Lkotlin/Function1;", "", "notifyUserChange", "", "", "Lkotlin/ParameterName;", "name", "change", "", "completeReset", "Lkotlin/Function0;", "tracker", "Lkotlin/Function2;", "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;", "Lkotlin/coroutines/Continuation;", "options", "Lcom/superwall/sdk/config/options/SuperwallOptions;", "webPaywallRedeemer", "Lcom/superwall/sdk/web/WebPaywallRedeemer;", "actor", "Lcom/superwall/sdk/misc/primitives/StateActor;", "Lcom/superwall/sdk/identity/IdentityState;", "sdkContext", "Lcom/superwall/sdk/SdkContext;", "<init>", "(Lcom/superwall/sdk/storage/Storage;Lcom/superwall/sdk/misc/IOScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/superwall/sdk/misc/primitives/StateActor;Lcom/superwall/sdk/SdkContext;)V", "getStorage", "()Lcom/superwall/sdk/storage/Storage;", "getNotifyUserChange", "()Lkotlin/jvm/functions/Function1;", "getCompleteReset", "()Lkotlin/jvm/functions/Function0;", "getTracker", "()Lkotlin/jvm/functions/Function2;", "Lkotlin/jvm/functions/Function2;", "getWebPaywallRedeemer", "getActor", "()Lcom/superwall/sdk/misc/primitives/StateActor;", "getSdkContext", "()Lcom/superwall/sdk/SdkContext;", PermissionsResponse.SCOPE_KEY, "Lkotlinx/coroutines/CoroutineScope;", "getScope", "()Lkotlinx/coroutines/CoroutineScope;", InterpolationAnimatedNode.EXTRAPOLATE_TYPE_IDENTITY, "getIdentity", "()Lcom/superwall/sdk/identity/IdentityState;", Keys.APP_USER_ID, "getAppUserId", "()Ljava/lang/String;", Keys.ALIAS_ID, "getAliasId", Keys.SEED, "", "getSeed", "()I", "userId", "getUserId", "userAttributes", "getUserAttributes", "()Ljava/util/Map;", "isLoggedIn", "", "()Z", "externalAccountId", "getExternalAccountId", "hasIdentity", "Lkotlinx/coroutines/flow/Flow;", "getHasIdentity", "()Lkotlinx/coroutines/flow/Flow;", "configure", "neverCalledStaticConfig", "identify", "Lcom/superwall/sdk/identity/IdentityOptions;", "reset", "mergeUserAttributes", "newUserAttributes", "shouldTrackMerge", "mergeAndNotify", "mergeAndNotify$superwall_release", "awaitLatestIdentity", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class IdentityManager implements IdentityContext {
    private final StateActor<IdentityContext, IdentityState> actor;
    private final Function0<Unit> completeReset;
    private final IOScope ioScope;
    private final Function1<Map<String, ? extends Object>, Unit> notifyUserChange;
    private final Function0<SuperwallOptions> options;
    private final SdkContext sdkContext;
    private final Storage storage;
    private final Function1<String, String> stringToSha;
    private final Function2<TrackableSuperwallEvent, Continuation<? super Unit>, Object> tracker;
    private final Function0<WebPaywallRedeemer> webPaywallRedeemer;

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _init_$lambda$0(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public IdentityManager(Storage storage, IOScope ioScope, Function1<? super String, String> stringToSha, Function1<? super Map<String, ? extends Object>, Unit> notifyUserChange, Function0<Unit> completeReset, Function2<? super TrackableSuperwallEvent, ? super Continuation<? super Unit>, ? extends Object> tracker, Function0<SuperwallOptions> options, Function0<WebPaywallRedeemer> webPaywallRedeemer, StateActor<IdentityContext, IdentityState> actor, SdkContext sdkContext) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(ioScope, "ioScope");
        Intrinsics.checkNotNullParameter(stringToSha, "stringToSha");
        Intrinsics.checkNotNullParameter(notifyUserChange, "notifyUserChange");
        Intrinsics.checkNotNullParameter(completeReset, "completeReset");
        Intrinsics.checkNotNullParameter(tracker, "tracker");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(webPaywallRedeemer, "webPaywallRedeemer");
        Intrinsics.checkNotNullParameter(actor, "actor");
        Intrinsics.checkNotNullParameter(sdkContext, "sdkContext");
        this.storage = storage;
        this.ioScope = ioScope;
        this.stringToSha = stringToSha;
        this.notifyUserChange = notifyUserChange;
        this.completeReset = completeReset;
        this.tracker = tracker;
        this.options = options;
        this.webPaywallRedeemer = webPaywallRedeemer;
        this.actor = actor;
        this.sdkContext = sdkContext;
    }

    @Override // com.superwall.sdk.misc.primitives.BaseContext
    public void delete(Storable<?> storable) {
        IdentityContext.DefaultImpls.delete(this, storable);
    }

    @Override // com.superwall.sdk.misc.primitives.StoreContext
    public void effect(TypedAction<IdentityContext> typedAction) {
        IdentityContext.DefaultImpls.effect(this, typedAction);
    }

    @Override // com.superwall.sdk.misc.primitives.StoreContext, com.superwall.sdk.misc.primitives.StateStore
    public StateFlow<IdentityState> getState() {
        return IdentityContext.DefaultImpls.getState(this);
    }

    @Override // com.superwall.sdk.misc.primitives.StoreContext
    public Object immediate(TypedAction<IdentityContext> typedAction, Continuation<? super Unit> continuation) {
        return IdentityContext.DefaultImpls.immediate(this, typedAction, continuation);
    }

    @Override // com.superwall.sdk.misc.primitives.StoreContext
    public Object immediateUntil(TypedAction<IdentityContext> typedAction, Function1<? super IdentityState, Boolean> function1, Continuation<? super Unit> continuation) {
        return IdentityContext.DefaultImpls.immediateUntil(this, typedAction, function1, continuation);
    }

    @Override // com.superwall.sdk.misc.primitives.BaseContext
    public <T> void persist(Storable<T> storable, T t) {
        IdentityContext.DefaultImpls.persist(this, storable, t);
    }

    @Override // com.superwall.sdk.misc.primitives.BaseContext
    /* JADX INFO: renamed from: read-IoAF18A */
    public <T> Object mo10584readIoAF18A(Storable<T> storable) {
        return IdentityContext.DefaultImpls.m10621readIoAF18A(this, storable);
    }

    @Override // com.superwall.sdk.misc.primitives.StoreContext
    public void sideEffect(Function1<? super Continuation<? super Unit>, ? extends Object> function1) {
        IdentityContext.DefaultImpls.sideEffect(this, function1);
    }

    @Override // com.superwall.sdk.misc.primitives.BaseContext
    public void track(TrackableSuperwallEvent trackableSuperwallEvent) {
        IdentityContext.DefaultImpls.track(this, trackableSuperwallEvent);
    }

    @Override // com.superwall.sdk.misc.primitives.StoreContext, com.superwall.sdk.misc.primitives.StateStore
    public void update(Reducer<IdentityState> reducer) {
        IdentityContext.DefaultImpls.update(this, reducer);
    }

    @Override // com.superwall.sdk.misc.primitives.BaseContext
    public Storage getStorage() {
        return this.storage;
    }

    public /* synthetic */ IdentityManager(Storage storage, IOScope iOScope, Function1 function1, Function1 function2, Function0 function0, Function2 function3, Function0 function4, Function0 function5, StateActor stateActor, SdkContext sdkContext, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(storage, iOScope, (i & 4) != 0 ? new Function1() { // from class: com.superwall.sdk.identity.IdentityManager$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return IdentityManager._init_$lambda$0((String) obj);
            }
        } : function1, function2, (i & 16) != 0 ? new Function0() { // from class: com.superwall.sdk.identity.IdentityManager$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return IdentityManager._init_$lambda$1();
            }
        } : function0, (i & 32) != 0 ? new AnonymousClass3(null) : function3, function4, function5, stateActor, sdkContext);
    }

    @Override // com.superwall.sdk.identity.IdentityContext
    public Function1<Map<String, ? extends Object>, Unit> getNotifyUserChange() {
        return this.notifyUserChange;
    }

    @Override // com.superwall.sdk.identity.IdentityContext
    public Function0<Unit> getCompleteReset() {
        return this.completeReset;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$1() {
        Superwall.INSTANCE.getInstance().reset$superwall_release(true);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: com.superwall.sdk.identity.IdentityManager$3, reason: invalid class name */
    /* JADX INFO: compiled from: IdentityManager.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.identity.IdentityManager$3", f = "IdentityManager.kt", i = {}, l = {35}, m = "invokeSuspend", n = {}, s = {})
    public static final class AnonymousClass3 extends SuspendLambda implements Function2<TrackableSuperwallEvent, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(continuation);
            anonymousClass3.L$0 = obj;
            return anonymousClass3;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(TrackableSuperwallEvent trackableSuperwallEvent, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(trackableSuperwallEvent, continuation)).invokeSuspend(Unit.INSTANCE);
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

    @Override // com.superwall.sdk.misc.primitives.BaseContext
    public Function2<TrackableSuperwallEvent, Continuation<? super Unit>, Object> getTracker() {
        return this.tracker;
    }

    @Override // com.superwall.sdk.identity.IdentityContext
    public Function0<WebPaywallRedeemer> getWebPaywallRedeemer() {
        return this.webPaywallRedeemer;
    }

    @Override // com.superwall.sdk.misc.primitives.StoreContext
    public StateActor<IdentityContext, IdentityState> getActor() {
        return this.actor;
    }

    @Override // com.superwall.sdk.identity.IdentityContext
    public SdkContext getSdkContext() {
        return this.sdkContext;
    }

    @Override // com.superwall.sdk.misc.primitives.StoreContext
    public CoroutineScope getScope() {
        return this.ioScope;
    }

    private final IdentityState getIdentity() {
        return getActor().getState().getValue();
    }

    public final String getAppUserId() {
        return getIdentity().getAppUserId();
    }

    public final String getAliasId() {
        return getIdentity().getAliasId();
    }

    public final int getSeed() {
        return getIdentity().getSeed();
    }

    public final String getUserId() {
        return getIdentity().getUserId();
    }

    public final Map<String, Object> getUserAttributes() {
        return getIdentity().getEnrichedAttributes();
    }

    public final boolean isLoggedIn() {
        return getIdentity().isLoggedIn();
    }

    public final String getExternalAccountId() {
        if (this.options.invoke().getPassIdentifiersToPlayStore()) {
            return getUserId();
        }
        return this.stringToSha.invoke(getUserId());
    }

    public final Flow<Boolean> getHasIdentity() {
        final StateFlow<IdentityState> state = getActor().getState();
        final Flow<Boolean> flow = new Flow<Boolean>() { // from class: com.superwall.sdk.identity.IdentityManager$special$$inlined$map$1

            /* JADX INFO: renamed from: com.superwall.sdk.identity.IdentityManager$special$$inlined$map$1$2, reason: invalid class name */
            /* JADX INFO: compiled from: Emitters.kt */
            @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* JADX INFO: renamed from: com.superwall.sdk.identity.IdentityManager$special$$inlined$map$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                @DebugMetadata(c = "com.superwall.sdk.identity.IdentityManager$special$$inlined$map$1$2", f = "IdentityManager.kt", i = {}, l = {50}, m = "emit", n = {}, s = {})
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
                        Boolean boolBoxBoolean = Boxing.boxBoolean(((IdentityState) obj).isReady());
                        anonymousClass1.label = 1;
                        if (flowCollector.emit(boolBoxBoolean, anonymousClass1) == coroutine_suspended) {
                            return coroutine_suspended;
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
            public Object collect(FlowCollector<? super Boolean> flowCollector, Continuation continuation) {
                Object objCollect = state.collect(new AnonymousClass2(flowCollector), continuation);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        };
        return new Flow<Boolean>() { // from class: com.superwall.sdk.identity.IdentityManager$special$$inlined$filter$1

            /* JADX INFO: renamed from: com.superwall.sdk.identity.IdentityManager$special$$inlined$filter$1$2, reason: invalid class name */
            /* JADX INFO: compiled from: Emitters.kt */
            @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* JADX INFO: renamed from: com.superwall.sdk.identity.IdentityManager$special$$inlined$filter$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                @DebugMetadata(c = "com.superwall.sdk.identity.IdentityManager$special$$inlined$filter$1$2", f = "IdentityManager.kt", i = {}, l = {50}, m = "emit", n = {}, s = {})
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    Object L$1;
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
                        if (((Boolean) obj).booleanValue()) {
                            anonymousClass1.label = 1;
                            if (flowCollector.emit(obj, anonymousClass1) == coroutine_suspended) {
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
            public Object collect(FlowCollector<? super Boolean> flowCollector, Continuation continuation) {
                Object objCollect = flow.collect(new AnonymousClass2(flowCollector), continuation);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        };
    }

    public final void configure(boolean neverCalledStaticConfig) {
        effect(new IdentityState.Actions.Configure(neverCalledStaticConfig));
    }

    public static /* synthetic */ void identify$default(IdentityManager identityManager, String str, IdentityOptions identityOptions, int i, Object obj) {
        if ((i & 2) != 0) {
            identityOptions = null;
        }
        identityManager.identify(str, identityOptions);
    }

    public final void identify(String userId, IdentityOptions options) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        effect(new IdentityState.Actions.Identify(userId, options));
    }

    public final void reset() {
        effect(IdentityState.Actions.FullReset.INSTANCE);
    }

    public static /* synthetic */ void mergeUserAttributes$default(IdentityManager identityManager, Map map, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        identityManager.mergeUserAttributes(map, z);
    }

    public final void mergeUserAttributes(Map<String, ? extends Object> newUserAttributes, boolean shouldTrackMerge) {
        Intrinsics.checkNotNullParameter(newUserAttributes, "newUserAttributes");
        effect(new IdentityState.Actions.MergeAttributes(newUserAttributes, shouldTrackMerge, false));
    }

    public static /* synthetic */ void mergeAndNotify$superwall_release$default(IdentityManager identityManager, Map map, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        identityManager.mergeAndNotify$superwall_release(map, z);
    }

    public final void mergeAndNotify$superwall_release(Map<String, ? extends Object> newUserAttributes, boolean shouldTrackMerge) {
        Intrinsics.checkNotNullParameter(newUserAttributes, "newUserAttributes");
        effect(new IdentityState.Actions.MergeAttributes(newUserAttributes, shouldTrackMerge, true));
    }

    /* JADX INFO: renamed from: com.superwall.sdk.identity.IdentityManager$awaitLatestIdentity$2, reason: invalid class name */
    /* JADX INFO: compiled from: IdentityManager.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "state", "Lcom/superwall/sdk/identity/IdentityState;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.identity.IdentityManager$awaitLatestIdentity$2", f = "IdentityManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<IdentityState, Continuation<? super Boolean>, Object> {
        /* synthetic */ Object L$0;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(IdentityState identityState, Continuation<? super Boolean> continuation) {
            return ((AnonymousClass2) create(identityState, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Boxing.boxBoolean(!((IdentityState) this.L$0).getHasPendingIdentityResolution());
        }
    }

    public final Object awaitLatestIdentity(Continuation<? super IdentityState> continuation) {
        return FlowKt.first(getActor().getState(), new AnonymousClass2(null), continuation);
    }
}
