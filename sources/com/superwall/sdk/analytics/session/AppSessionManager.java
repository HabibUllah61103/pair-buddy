package com.superwall.sdk.analytics.session;

import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import com.reactcommunity.rndatetimepicker.RNConstants;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.analytics.internal.TrackingKt;
import com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent;
import com.superwall.sdk.config.ConfigManager;
import com.superwall.sdk.config.models.ConfigState;
import com.superwall.sdk.config.models.ConfigStateKt;
import com.superwall.sdk.dependencies.DeviceHelperFactory;
import com.superwall.sdk.dependencies.UserAttributesEventFactory;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.misc.IOScope;
import com.superwall.sdk.models.config.Config;
import com.superwall.sdk.storage.LocalStorage;
import com.superwall.sdk.utilities.ErrorTrackingKt;
import java.util.Date;
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
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: compiled from: AppSessionManager.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001:\u0001(B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u0010\"\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0016J\b\u0010#\u001a\u00020\u001fH\u0002J\u0006\u0010$\u001a\u00020\u001fJ\b\u0010%\u001a\u00020\u001fH\u0002J\b\u0010&\u001a\u00020\u001fH\u0002J\b\u0010'\u001a\u00020\u001fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0012\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0014@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lcom/superwall/sdk/analytics/session/AppSessionManager;", "Landroidx/lifecycle/DefaultLifecycleObserver;", "configManager", "Lcom/superwall/sdk/config/ConfigManager;", "storage", "Lcom/superwall/sdk/storage/LocalStorage;", "delegate", "Lcom/superwall/sdk/analytics/session/AppSessionManager$Factory;", "backgroundScope", "Lcom/superwall/sdk/misc/IOScope;", "<init>", "(Lcom/superwall/sdk/config/ConfigManager;Lcom/superwall/sdk/storage/LocalStorage;Lcom/superwall/sdk/analytics/session/AppSessionManager$Factory;Lcom/superwall/sdk/misc/IOScope;)V", "appSessionTimeout", "", "getAppSessionTimeout", "()Ljava/lang/Long;", "setAppSessionTimeout", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", RNConstants.ARG_VALUE, "Lcom/superwall/sdk/analytics/session/AppSession;", "appSession", "getAppSession", "()Lcom/superwall/sdk/analytics/session/AppSession;", "setAppSession", "(Lcom/superwall/sdk/analytics/session/AppSession;)V", "lastAppClose", "Ljava/util/Date;", "didTrackAppLaunch", "", "onStart", "", "owner", "Landroidx/lifecycle/LifecycleOwner;", "onStop", "willTerminate", "listenForAppSessionTimeout", "sessionCouldRefresh", "detectNewSession", "trackAppLaunch", "Factory", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AppSessionManager implements DefaultLifecycleObserver {
    private AppSession appSession;
    private Long appSessionTimeout;
    private final IOScope backgroundScope;
    private final ConfigManager configManager;
    private final Factory delegate;
    private boolean didTrackAppLaunch;
    private Date lastAppClose;
    private final LocalStorage storage;

    /* JADX INFO: compiled from: AppSessionManager.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003¨\u0006\u0004"}, d2 = {"Lcom/superwall/sdk/analytics/session/AppSessionManager$Factory;", "Lcom/superwall/sdk/analytics/session/AppManagerDelegate;", "Lcom/superwall/sdk/dependencies/DeviceHelperFactory;", "Lcom/superwall/sdk/dependencies/UserAttributesEventFactory;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface Factory extends AppManagerDelegate, DeviceHelperFactory, UserAttributesEventFactory {
    }

    public AppSessionManager(ConfigManager configManager, LocalStorage storage, Factory delegate, IOScope backgroundScope) {
        Intrinsics.checkNotNullParameter(configManager, "configManager");
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        this.configManager = configManager;
        this.storage = storage;
        this.delegate = delegate;
        this.backgroundScope = backgroundScope;
        this.appSession = new AppSession((String) null, (Date) null, (Date) null, 7, (DefaultConstructorMarker) null);
        listenForAppSessionTimeout();
    }

    public final Long getAppSessionTimeout() {
        return this.appSessionTimeout;
    }

    public final void setAppSessionTimeout(Long l) {
        this.appSessionTimeout = l;
    }

    public final AppSession getAppSession() {
        return this.appSession;
    }

    public final void setAppSession(AppSession value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.appSession = value;
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getMain()), null, null, new AppSessionManager$appSession$1(this, value, null), 3, null);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.analytics.session.AppSessionManager$onStart$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AppSessionManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.analytics.session.AppSessionManager$onStart$1", f = "AppSessionManager.kt", i = {}, l = {57}, m = "invokeSuspend", n = {}, s = {})
    static final class C04551 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C04551(Continuation<? super C04551> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C04551(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04551) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (TrackingKt.track(Superwall.INSTANCE.getInstance(), new InternalSuperwallEvent.AppOpen(null, 1, null), this) == coroutine_suspended) {
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

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStart(LifecycleOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        super.onStart(owner);
        BuildersKt__Builders_commonKt.launch$default(this.backgroundScope, null, null, new C04551(null), 3, null);
        sessionCouldRefresh();
    }

    /* JADX INFO: renamed from: com.superwall.sdk.analytics.session.AppSessionManager$onStop$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AppSessionManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.analytics.session.AppSessionManager$onStop$1", f = "AppSessionManager.kt", i = {}, l = {ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT}, m = "invokeSuspend", n = {}, s = {})
    static final class C04561 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C04561(Continuation<? super C04561> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C04561(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04561) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (TrackingKt.track(Superwall.INSTANCE.getInstance(), new InternalSuperwallEvent.AppClose(null, 1, null), this) == coroutine_suspended) {
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

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStop(LifecycleOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        super.onStop(owner);
        BuildersKt__Builders_commonKt.launch$default(this.backgroundScope, null, null, new C04561(null), 3, null);
        this.lastAppClose = new Date();
        this.appSession.setEndAt(new Date());
    }

    private final void willTerminate() {
        this.appSession.setEndAt(new Date());
    }

    /* JADX INFO: renamed from: com.superwall.sdk.analytics.session.AppSessionManager$listenForAppSessionTimeout$1, reason: invalid class name */
    /* JADX INFO: compiled from: AppSessionManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.analytics.session.AppSessionManager$listenForAppSessionTimeout$1", f = "AppSessionManager.kt", i = {}, l = {80}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AppSessionManager.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                final StateFlow<ConfigState> configState$superwall_release = AppSessionManager.this.configManager.getConfigState$superwall_release();
                Flow<Config> flow = new Flow<Config>() { // from class: com.superwall.sdk.analytics.session.AppSessionManager$listenForAppSessionTimeout$1$invokeSuspend$$inlined$mapNotNull$1

                    /* JADX INFO: renamed from: com.superwall.sdk.analytics.session.AppSessionManager$listenForAppSessionTimeout$1$invokeSuspend$$inlined$mapNotNull$1$2, reason: invalid class name */
                    /* JADX INFO: compiled from: Emitters.kt */
                    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                    public static final class AnonymousClass2<T> implements FlowCollector {
                        final /* synthetic */ FlowCollector $this_unsafeFlow;

                        /* JADX INFO: renamed from: com.superwall.sdk.analytics.session.AppSessionManager$listenForAppSessionTimeout$1$invokeSuspend$$inlined$mapNotNull$1$2$1, reason: invalid class name */
                        @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                        @DebugMetadata(c = "com.superwall.sdk.analytics.session.AppSessionManager$listenForAppSessionTimeout$1$invokeSuspend$$inlined$mapNotNull$1$2", f = "AppSessionManager.kt", i = {}, l = {52}, m = "emit", n = {}, s = {})
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
                        Object objCollect = configState$superwall_release.collect(new AnonymousClass2(flowCollector), continuation);
                        return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
                    }
                };
                final AppSessionManager appSessionManager = AppSessionManager.this;
                this.label = 1;
                if (flow.collect(new FlowCollector() { // from class: com.superwall.sdk.analytics.session.AppSessionManager.listenForAppSessionTimeout.1.2
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                        return emit((Config) obj2, (Continuation<? super Unit>) continuation);
                    }

                    public final Object emit(Config config, Continuation<? super Unit> continuation) {
                        appSessionManager.setAppSessionTimeout(Boxing.boxLong(config.getAppSessionTimeout()));
                        if (!appSessionManager.didTrackAppLaunch) {
                            appSessionManager.sessionCouldRefresh();
                        }
                        return Unit.INSTANCE;
                    }
                }, this) == coroutine_suspended) {
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

    public final void listenForAppSessionTimeout() {
        BuildersKt__Builders_commonKt.launch$default(this.backgroundScope, null, null, new AnonymousClass1(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sessionCouldRefresh() {
        try {
            detectNewSession();
            trackAppLaunch();
            new Either.Success(BuildersKt__Builders_commonKt.launch$default(this.backgroundScope, null, null, new AppSessionManager$sessionCouldRefresh$1$1(this, null), 3, null));
        } catch (Throwable th) {
            if (ErrorTrackingKt.shouldLog(th) && Superwall.INSTANCE.getInitialized()) {
                ErrorTrackingKt.trackError(Superwall.INSTANCE.getInstance(), th);
            }
            new Either.Failure(th);
        }
    }

    private final void detectNewSession() {
        Object objLaunch$default;
        try {
            if (AppSessionLogic.INSTANCE.didStartNewSession(this.lastAppClose, this.appSessionTimeout)) {
                setAppSession(new AppSession((String) null, (Date) null, (Date) null, 7, (DefaultConstructorMarker) null));
                BuildersKt__Builders_commonKt.launch$default(this.backgroundScope, null, null, new AppSessionManager$detectNewSession$1$1(this, null), 3, null);
                objLaunch$default = BuildersKt__Builders_commonKt.launch$default(this.backgroundScope, null, null, new AppSessionManager$detectNewSession$1$2(this, null), 3, null);
            } else {
                this.appSession.setEndAt(null);
                objLaunch$default = Unit.INSTANCE;
            }
            new Either.Success(objLaunch$default);
        } catch (Throwable th) {
            if (ErrorTrackingKt.shouldLog(th) && Superwall.INSTANCE.getInitialized()) {
                ErrorTrackingKt.trackError(Superwall.INSTANCE.getInstance(), th);
            }
            new Either.Failure(th);
        }
    }

    private final void trackAppLaunch() {
        if (this.didTrackAppLaunch) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(this.backgroundScope, null, null, new C04571(null), 3, null);
        this.didTrackAppLaunch = true;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.analytics.session.AppSessionManager$trackAppLaunch$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AppSessionManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.analytics.session.AppSessionManager$trackAppLaunch$1", f = "AppSessionManager.kt", i = {}, l = {146}, m = "invokeSuspend", n = {}, s = {})
    static final class C04571 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C04571(Continuation<? super C04571> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C04571(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04571) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (TrackingKt.track(Superwall.INSTANCE.getInstance(), new InternalSuperwallEvent.AppLaunch(null, 1, null), this) == coroutine_suspended) {
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
