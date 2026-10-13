package com.superwall.sdk.storage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.analytics.internal.trackable.InternalSuperwallEvent;
import com.superwall.sdk.analytics.internal.trackable.Trackable;
import com.superwall.sdk.analytics.internal.trackable.UserInitiatedEvent;
import com.superwall.sdk.config.ConfigManager;
import com.superwall.sdk.config.options.SuperwallOptions;
import com.superwall.sdk.misc.IOScope;
import com.superwall.sdk.misc.MainScope;
import com.superwall.sdk.models.events.EventData;
import com.superwall.sdk.models.events.EventsRequest;
import com.superwall.sdk.network.Network;
import java.util.ArrayList;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;

/* JADX INFO: compiled from: EventsQueue.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B/\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u001d\u001a\u00020\u001eH\u0082@¢\u0006\u0002\u0010\u001fJ\b\u0010 \u001a\u00020\u001eH\u0002J\u0016\u0010!\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020\u00132\u0006\u0010#\u001a\u00020$J\u0010\u0010%\u001a\u00020&2\u0006\u0010#\u001a\u00020$H\u0002J\u0018\u0010'\u001a\u00020\u001e2\b\b\u0002\u0010(\u001a\u00020\u0010H\u0086@¢\u0006\u0002\u0010)J\u001c\u0010*\u001a\u00020\u001e2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010+\u001a\u0004\u0018\u00010,H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082D¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u00020\u001aX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001c¨\u0006-"}, d2 = {"Lcom/superwall/sdk/storage/EventsQueue;", "Landroid/content/BroadcastReceiver;", "Lkotlinx/coroutines/CoroutineScope;", "context", "Landroid/content/Context;", "network", "Lcom/superwall/sdk/network/Network;", "ioScope", "Lcom/superwall/sdk/misc/IOScope;", "mainScope", "Lcom/superwall/sdk/misc/MainScope;", "configManager", "Lcom/superwall/sdk/config/ConfigManager;", "<init>", "(Landroid/content/Context;Lcom/superwall/sdk/network/Network;Lcom/superwall/sdk/misc/IOScope;Lcom/superwall/sdk/misc/MainScope;Lcom/superwall/sdk/config/ConfigManager;)V", "maxEventCount", "", "elements", "", "Lcom/superwall/sdk/models/events/EventData;", "timer", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "", "job", "Lkotlinx/coroutines/Job;", "coroutineContext", "Lkotlin/coroutines/CoroutineContext;", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "setupTimer", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "addObserver", "enqueue", "data", NotificationCompat.CATEGORY_EVENT, "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;", "externalDataCollectionAllowed", "", "flushInternal", "depth", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onReceive", "intent", "Landroid/content/Intent;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class EventsQueue extends BroadcastReceiver implements CoroutineScope {
    private final ConfigManager configManager;
    private final Context context;
    private final CoroutineContext coroutineContext;
    private List<EventData> elements;
    private final IOScope ioScope;
    private Job job;
    private final MainScope mainScope;
    private final int maxEventCount;
    private final Network network;
    private final MutableSharedFlow<Long> timer;

    /* JADX INFO: renamed from: com.superwall.sdk.storage.EventsQueue$setupTimer$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: EventsQueue.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.storage.EventsQueue", f = "EventsQueue.kt", i = {}, l = {ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF}, m = "setupTimer", n = {}, s = {})
    static final class C05801 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C05801(Continuation<? super C05801> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return EventsQueue.this.setupTimer(this);
        }
    }

    public EventsQueue(Context context, Network network, IOScope ioScope, MainScope mainScope, ConfigManager configManager) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(ioScope, "ioScope");
        Intrinsics.checkNotNullParameter(mainScope, "mainScope");
        Intrinsics.checkNotNullParameter(configManager, "configManager");
        this.context = context;
        this.network = network;
        this.ioScope = ioScope;
        this.mainScope = mainScope;
        this.configManager = configManager;
        this.maxEventCount = 50;
        this.elements = new ArrayList();
        this.timer = SharedFlowKt.MutableSharedFlow$default(0, 0, null, 7, null);
        this.coroutineContext = CoroutineDispatcher.limitedParallelism$default(Dispatchers.getIO(), 1, null, 2, null);
        BuildersKt__Builders_commonKt.launch$default(mainScope, null, null, new AnonymousClass1(null), 3, null);
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return this.coroutineContext;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.storage.EventsQueue$1, reason: invalid class name */
    /* JADX INFO: compiled from: EventsQueue.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.storage.EventsQueue$1", f = "EventsQueue.kt", i = {}, l = {38}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return EventsQueue.this.new AnonymousClass1(continuation);
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
                this.label = 1;
                if (EventsQueue.this.setupTimer(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            EventsQueue.this.addObserver();
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object setupTimer(Continuation<? super Unit> continuation) {
        C05801 c05801;
        if (continuation instanceof C05801) {
            c05801 = (C05801) continuation;
            if ((c05801.label & Integer.MIN_VALUE) != 0) {
                c05801.label -= Integer.MIN_VALUE;
            } else {
                c05801 = new C05801(continuation);
            }
        } else {
            c05801 = new C05801(continuation);
        }
        Object obj = c05801.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c05801.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            SuperwallOptions options = this.configManager.getOptions();
            this.job = BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new C05812((options != null ? options.getNetworkEnvironment() : null) instanceof SuperwallOptions.NetworkEnvironment.Release ? 20L : 1L, this, null), 3, null);
            MutableSharedFlow<Long> mutableSharedFlow = this.timer;
            FlowCollector<? super Long> flowCollector = new FlowCollector() { // from class: com.superwall.sdk.storage.EventsQueue.setupTimer.3
                @Override // kotlinx.coroutines.flow.FlowCollector
                public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation2) {
                    return emit(((Number) obj2).longValue(), (Continuation<? super Unit>) continuation2);
                }

                public final Object emit(long j, Continuation<? super Unit> continuation2) {
                    Object objFlushInternal$default = EventsQueue.flushInternal$default(EventsQueue.this, 0, continuation2, 1, null);
                    return objFlushInternal$default == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objFlushInternal$default : Unit.INSTANCE;
                }
            };
            c05801.label = 1;
            if (mutableSharedFlow.collect(flowCollector, c05801) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        throw new KotlinNothingValueException();
    }

    /* JADX INFO: renamed from: com.superwall.sdk.storage.EventsQueue$setupTimer$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: EventsQueue.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.storage.EventsQueue$setupTimer$2", f = "EventsQueue.kt", i = {0, 1}, l = {49, 50}, m = "invokeSuspend", n = {"$this$launch", "$this$launch"}, s = {"L$0", "L$0"})
    static final class C05812 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $timeInterval;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ EventsQueue this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05812(long j, EventsQueue eventsQueue, Continuation<? super C05812> continuation) {
            super(2, continuation);
            this.$timeInterval = j;
            this.this$0 = eventsQueue;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C05812 c05812 = new C05812(this.$timeInterval, this.this$0, continuation);
            c05812.L$0 = obj;
            return c05812;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05812) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:14:0x0034  */
        /* JADX WARN: Code duplicated, block: B:17:0x0048  */
        /* JADX WARN: Code duplicated, block: B:21:0x0065  */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0062, code lost:
        
            if (r8.this$0.timer.emit(kotlin.coroutines.jvm.internal.Boxing.boxLong(java.lang.System.currentTimeMillis()), r8) == r0) goto L20;
         */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0062 -> B:7:0x0015). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r9) {
            /*
                r8 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r8.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L27
                if (r1 == r3) goto L1f
                if (r1 != r2) goto L17
                java.lang.Object r1 = r8.L$0
                kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
                kotlin.ResultKt.throwOnFailure(r9)
            L15:
                r9 = r1
                goto L2e
            L17:
                java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r9.<init>(r0)
                throw r9
            L1f:
                java.lang.Object r1 = r8.L$0
                kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
                kotlin.ResultKt.throwOnFailure(r9)
                goto L49
            L27:
                kotlin.ResultKt.throwOnFailure(r9)
                java.lang.Object r9 = r8.L$0
                kotlinx.coroutines.CoroutineScope r9 = (kotlinx.coroutines.CoroutineScope) r9
            L2e:
                boolean r1 = kotlinx.coroutines.CoroutineScopeKt.isActive(r9)
                if (r1 == 0) goto L65
                long r4 = r8.$timeInterval
                r1 = 1000(0x3e8, float:1.401E-42)
                long r6 = (long) r1
                long r4 = r4 * r6
                r1 = r8
                kotlin.coroutines.Continuation r1 = (kotlin.coroutines.Continuation) r1
                r8.L$0 = r9
                r8.label = r3
                java.lang.Object r1 = kotlinx.coroutines.DelayKt.delay(r4, r1)
                if (r1 != r0) goto L48
                goto L64
            L48:
                r1 = r9
            L49:
                com.superwall.sdk.storage.EventsQueue r9 = r8.this$0
                kotlinx.coroutines.flow.MutableSharedFlow r9 = com.superwall.sdk.storage.EventsQueue.access$getTimer$p(r9)
                long r4 = java.lang.System.currentTimeMillis()
                java.lang.Long r4 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r4)
                r5 = r8
                kotlin.coroutines.Continuation r5 = (kotlin.coroutines.Continuation) r5
                r8.L$0 = r1
                r8.label = r2
                java.lang.Object r9 = r9.emit(r4, r5)
                if (r9 != r0) goto L15
            L64:
                return r0
            L65:
                kotlin.Unit r9 = kotlin.Unit.INSTANCE
                return r9
            */
            throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.storage.EventsQueue.C05812.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addObserver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        this.context.registerReceiver(this, intentFilter);
    }

    public final void enqueue(EventData data, Trackable event) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(event, "event");
        if (externalDataCollectionAllowed(event)) {
            BuildersKt__Builders_commonKt.launch$default(this, null, null, new C05781(data, null), 3, null);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.storage.EventsQueue$enqueue$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: EventsQueue.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.storage.EventsQueue$enqueue$1", f = "EventsQueue.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C05781 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ EventData $data;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05781(EventData eventData, Continuation<? super C05781> continuation) {
            super(2, continuation);
            this.$data = eventData;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return EventsQueue.this.new C05781(this.$data, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05781) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                EventsQueue.this.elements.add(this.$data);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    private final boolean externalDataCollectionAllowed(Trackable event) {
        if (Superwall.INSTANCE.getInstance().getOptions().getIsExternalDataCollectionEnabled()) {
            return true;
        }
        return ((event instanceof InternalSuperwallEvent.TriggerFire) || (event instanceof InternalSuperwallEvent.Attributes) || (event instanceof UserInitiatedEvent.Track)) ? false : true;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.storage.EventsQueue$flushInternal$2, reason: invalid class name */
    /* JADX INFO: compiled from: EventsQueue.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.storage.EventsQueue$flushInternal$2", f = "EventsQueue.kt", i = {}, l = {106}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $depth;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(int i, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$depth = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return EventsQueue.this.new AnonymousClass2(this.$depth, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            int i;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i2 = this.label;
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                ArrayList arrayList = new ArrayList();
                for (int i3 = 0; i3 < EventsQueue.this.maxEventCount && !EventsQueue.this.elements.isEmpty(); i3++) {
                    arrayList.add(EventsQueue.this.elements.remove(0));
                }
                if (!arrayList.isEmpty()) {
                    BuildersKt__Builders_commonKt.launch$default(EventsQueue.this.ioScope, null, null, new AnonymousClass1(EventsQueue.this, new EventsRequest(arrayList), null), 3, null);
                }
                if (!EventsQueue.this.elements.isEmpty() && (i = this.$depth) > 0) {
                    this.label = 1;
                    if (EventsQueue.this.flushInternal(i - 1, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: com.superwall.sdk.storage.EventsQueue$flushInternal$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: EventsQueue.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.superwall.sdk.storage.EventsQueue$flushInternal$2$1", f = "EventsQueue.kt", i = {}, l = {102}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ EventsRequest $events;
            int label;
            final /* synthetic */ EventsQueue this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(EventsQueue eventsQueue, EventsRequest eventsRequest, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = eventsQueue;
                this.$events = eventsRequest;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.this$0, this.$events, continuation);
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
                    this.label = 1;
                    if (this.this$0.network.sendEvents(this.$events, this) == coroutine_suspended) {
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

    public static /* synthetic */ Object flushInternal$default(EventsQueue eventsQueue, int i, Continuation continuation, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 10;
        }
        return eventsQueue.flushInternal(i, continuation);
    }

    public final Object flushInternal(int i, Continuation<? super Unit> continuation) {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new AnonymousClass2(i, null), 3, null);
        return Unit.INSTANCE;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent != null ? intent.getAction() : null;
        if (action != null && action.hashCode() == -2128145023 && action.equals("android.intent.action.SCREEN_OFF")) {
            BuildersKt__Builders_commonKt.launch$default(this.ioScope, null, null, new C05791(null), 3, null);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.storage.EventsQueue$onReceive$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: EventsQueue.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.storage.EventsQueue$onReceive$1", f = "EventsQueue.kt", i = {}, l = {120}, m = "invokeSuspend", n = {}, s = {})
    static final class C05791 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C05791(Continuation<? super C05791> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return EventsQueue.this.new C05791(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C05791) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (EventsQueue.flushInternal$default(EventsQueue.this, 0, this, 1, null) == coroutine_suspended) {
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
