package com.superwall.sdk.analytics.internal;

import androidx.core.app.NotificationCompat;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.analytics.internal.trackable.Trackable;
import com.superwall.sdk.analytics.internal.trackable.TrackableSuperwallEvent;
import com.superwall.sdk.analytics.superwall.SuperwallEventInfo;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.models.config.Config;
import com.superwall.sdk.models.config.FeatureFlags;
import com.superwall.sdk.models.events.EventData;
import com.superwall.sdk.storage.DisableVerboseEvents;
import com.superwall.sdk.storage.core_data.CoreDataManager;
import com.superwall.sdk.utilities.ErrorTrackingKt;
import java.util.Date;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: Tracking.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\u001a \u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0086@¢\u0006\u0002\u0010\u0006\u001a\u001d\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\b\u001a\"\u0010\t\u001a\u00020\n*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\fH\u0086@¢\u0006\u0002\u0010\r\u001a.\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00100\u000f*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\fH\u0082@¢\u0006\u0002\u0010\r¨\u0006\u0011"}, d2 = {"track", "Lkotlin/Result;", "Lcom/superwall/sdk/analytics/internal/TrackingResult;", "Lcom/superwall/sdk/Superwall;", NotificationCompat.CATEGORY_EVENT, "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;", "(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "trackSync", "(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;)Ljava/lang/Object;", "handleImplicitTrigger", "", "eventData", "Lcom/superwall/sdk/models/events/EventData;", "(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lcom/superwall/sdk/models/events/EventData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "internallyHandleImplicitTrigger", "Lcom/superwall/sdk/misc/Either;", "", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class TrackingKt {

    /* JADX INFO: renamed from: com.superwall.sdk.analytics.internal.TrackingKt$track$1, reason: invalid class name */
    /* JADX INFO: compiled from: Tracking.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.analytics.internal.TrackingKt", f = "Tracking.kt", i = {0, 0, 1, 1, 1, 2, 2}, l = {40, 46, 101}, m = "track", n = {"$this$track", NotificationCompat.CATEGORY_EVENT, "$this$track", NotificationCompat.CATEGORY_EVENT, "eventCreatedAt", "parameters", "eventData"}, s = {"L$0", "L$1", "L$0", "L$1", "L$2", "L$0", "L$1"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            Object objTrack = TrackingKt.track(null, null, this);
            return objTrack == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objTrack : Result.m11240boximpl(objTrack);
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00ae A[Catch: all -> 0x017b, TryCatch #0 {all -> 0x017b, blocks: (B:14:0x0036, B:54:0x016e, B:19:0x004f, B:32:0x00a8, B:34:0x00ae, B:35:0x00e1, B:37:0x0100, B:39:0x0106, B:41:0x0110, B:44:0x0125, B:46:0x0135, B:47:0x0140, B:49:0x0155, B:22:0x005d, B:28:0x007e, B:25:0x0066), top: B:72:0x0026 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x010f  */
    /* JADX WARN: Code duplicated, block: B:43:0x0124  */
    /* JADX WARN: Code duplicated, block: B:46:0x0135 A[Catch: all -> 0x017b, TryCatch #0 {all -> 0x017b, blocks: (B:14:0x0036, B:54:0x016e, B:19:0x004f, B:32:0x00a8, B:34:0x00ae, B:35:0x00e1, B:37:0x0100, B:39:0x0106, B:41:0x0110, B:44:0x0125, B:46:0x0135, B:47:0x0140, B:49:0x0155, B:22:0x005d, B:28:0x007e, B:25:0x0066), top: B:72:0x0026 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x0155 A[Catch: all -> 0x017b, TryCatch #0 {all -> 0x017b, blocks: (B:14:0x0036, B:54:0x016e, B:19:0x004f, B:32:0x00a8, B:34:0x00ae, B:35:0x00e1, B:37:0x0100, B:39:0x0106, B:41:0x0110, B:44:0x0125, B:46:0x0135, B:47:0x0140, B:49:0x0155, B:22:0x005d, B:28:0x007e, B:25:0x0066), top: B:72:0x0026 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x016a  */
    /* JADX WARN: Code duplicated, block: B:65:0x019f  */
    /* JADX WARN: Code duplicated, block: B:66:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:68:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:70:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object track(Superwall superwall, Trackable trackable, Continuation<? super Result<TrackingResult>> continuation) {
        AnonymousClass1 anonymousClass1;
        Either failure;
        Superwall superwall2;
        Trackable trackable2;
        Date date;
        Trackable trackable3;
        TrackingParameters trackingParameters;
        EventData eventData;
        Config config;
        Boolean boolBoxBoolean;
        Boolean bool;
        Superwall companion;
        TrackingParameters trackingParameters2;
        EventData eventData2;
        FeatureFlags featureFlags;
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
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Flow<Boolean> hasInitialized = Superwall.INSTANCE.getHasInitialized();
                superwall2 = superwall;
                anonymousClass1.L$0 = superwall2;
                trackable2 = trackable;
                anonymousClass1.L$1 = trackable2;
                anonymousClass1.label = 1;
                if (FlowKt.first(hasInitialized, anonymousClass1) == coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i == 1) {
                Trackable trackable4 = (Trackable) anonymousClass1.L$1;
                Superwall superwall3 = (Superwall) anonymousClass1.L$0;
                ResultKt.throwOnFailure(obj);
                trackable2 = trackable4;
                superwall2 = superwall3;
            } else {
                if (i == 2) {
                    Date date2 = (Date) anonymousClass1.L$2;
                    trackable3 = (Trackable) anonymousClass1.L$1;
                    Superwall superwall4 = (Superwall) anonymousClass1.L$0;
                    ResultKt.throwOnFailure(obj);
                    date = date2;
                    superwall2 = superwall4;
                    trackingParameters = (TrackingParameters) obj;
                    if (trackable3 instanceof TrackableSuperwallEvent) {
                        SuperwallEventInfo superwallEventInfo = new SuperwallEventInfo(((TrackableSuperwallEvent) trackable3).getSuperwallPlacement(), trackingParameters.getDelegateParams());
                        superwall2.getDependencyContainer$superwall_release().getDelegateAdapter().handleSuperwallEvent(superwallEventInfo);
                        superwall2.emitSuperwallEvent$superwall_release(superwallEventInfo);
                        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.placements, "Logged Event", trackingParameters.getAudienceFilterParams(), null, 16, null);
                    }
                    eventData = new EventData((String) null, trackable3.getRawName(), trackingParameters.getAudienceFilterParams(), date, 1, (DefaultConstructorMarker) null);
                    config = superwall2.getDependencyContainer$superwall_release().getConfigManager().getConfig();
                    if (config != null || (featureFlags = config.getFeatureFlags()) == null) {
                        boolBoxBoolean = null;
                    } else {
                        boolBoxBoolean = Boxing.boxBoolean(featureFlags.getDisableVerboseEvents());
                    }
                    bool = (Boolean) superwall2.getDependencyContainer$superwall_release().getStorage().read(DisableVerboseEvents.INSTANCE);
                    if (boolBoxBoolean == null) {
                        boolBoxBoolean = bool;
                    }
                    if (TrackingLogic.INSTANCE.isNotDisabledVerboseEvent(trackable3, boolBoxBoolean, superwall2.getDependencyContainer$superwall_release().makeIsSandbox())) {
                        superwall2.getDependencyContainer$superwall_release().getEventsQueue().enqueue(eventData, trackable3);
                    }
                    CoreDataManager.saveEventData$default(superwall2.getDependencyContainer$superwall_release().getStorage().getCoreDataManager(), eventData, null, 2, null);
                    if (trackable3.getCanImplicitlyTriggerPaywall()) {
                        companion = Superwall.INSTANCE.getInstance();
                        anonymousClass1.L$0 = trackingParameters;
                        anonymousClass1.L$1 = eventData;
                        anonymousClass1.L$2 = null;
                        anonymousClass1.label = 3;
                        if (handleImplicitTrigger(companion, trackable3, eventData, anonymousClass1) != coroutine_suspended) {
                            trackingParameters2 = trackingParameters;
                            eventData2 = eventData;
                        }
                        return coroutine_suspended;
                    }
                    failure = new Either.Success(new TrackingResult(eventData, trackingParameters));
                    if (failure instanceof Either.Success) {
                        Result.Companion companion2 = Result.INSTANCE;
                        return Result.m11241constructorimpl(((Either.Success) failure).getValue());
                    }
                    if (!(failure instanceof Either.Failure)) {
                        throw new NoWhenBranchMatchedException();
                    }
                    Result.Companion companion3 = Result.INSTANCE;
                    return Result.m11241constructorimpl(ResultKt.createFailure(((Either.Failure) failure).getError()));
                }
                if (i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                eventData2 = (EventData) anonymousClass1.L$1;
                trackingParameters2 = (TrackingParameters) anonymousClass1.L$0;
                ResultKt.throwOnFailure(obj);
            }
            trackingParameters = trackingParameters2;
            eventData = eventData2;
            failure = new Either.Success(new TrackingResult(eventData, trackingParameters));
            if (failure instanceof Either.Success) {
                Result.Companion companion4 = Result.INSTANCE;
                return Result.m11241constructorimpl(((Either.Success) failure).getValue());
            }
            if (!(failure instanceof Either.Failure)) {
                throw new NoWhenBranchMatchedException();
            }
            Result.Companion companion5 = Result.INSTANCE;
            return Result.m11241constructorimpl(ResultKt.createFailure(((Either.Failure) failure).getError()));
            Date date3 = new Date();
            TrackingLogic.Companion companion6 = TrackingLogic.INSTANCE;
            String id = superwall2.getDependencyContainer$superwall_release().getAppSessionManager().getAppSession().getId();
            anonymousClass1.L$0 = superwall2;
            anonymousClass1.L$1 = trackable2;
            anonymousClass1.L$2 = date3;
            anonymousClass1.label = 2;
            Object objProcessParameters = companion6.processParameters(trackable2, id, anonymousClass1);
            if (objProcessParameters != coroutine_suspended) {
                date = date3;
                obj = objProcessParameters;
                trackable3 = trackable2;
                trackingParameters = (TrackingParameters) obj;
                if (trackable3 instanceof TrackableSuperwallEvent) {
                    SuperwallEventInfo superwallEventInfo2 = new SuperwallEventInfo(((TrackableSuperwallEvent) trackable3).getSuperwallPlacement(), trackingParameters.getDelegateParams());
                    superwall2.getDependencyContainer$superwall_release().getDelegateAdapter().handleSuperwallEvent(superwallEventInfo2);
                    superwall2.emitSuperwallEvent$superwall_release(superwallEventInfo2);
                    Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.placements, "Logged Event", trackingParameters.getAudienceFilterParams(), null, 16, null);
                }
                eventData = new EventData((String) null, trackable3.getRawName(), trackingParameters.getAudienceFilterParams(), date, 1, (DefaultConstructorMarker) null);
                config = superwall2.getDependencyContainer$superwall_release().getConfigManager().getConfig();
                if (config != null) {
                    boolBoxBoolean = null;
                } else {
                    boolBoxBoolean = null;
                }
                bool = (Boolean) superwall2.getDependencyContainer$superwall_release().getStorage().read(DisableVerboseEvents.INSTANCE);
                if (boolBoxBoolean == null) {
                    boolBoxBoolean = bool;
                }
                if (TrackingLogic.INSTANCE.isNotDisabledVerboseEvent(trackable3, boolBoxBoolean, superwall2.getDependencyContainer$superwall_release().makeIsSandbox())) {
                    superwall2.getDependencyContainer$superwall_release().getEventsQueue().enqueue(eventData, trackable3);
                }
                CoreDataManager.saveEventData$default(superwall2.getDependencyContainer$superwall_release().getStorage().getCoreDataManager(), eventData, null, 2, null);
                if (trackable3.getCanImplicitlyTriggerPaywall()) {
                    companion = Superwall.INSTANCE.getInstance();
                    anonymousClass1.L$0 = trackingParameters;
                    anonymousClass1.L$1 = eventData;
                    anonymousClass1.L$2 = null;
                    anonymousClass1.label = 3;
                    if (handleImplicitTrigger(companion, trackable3, eventData, anonymousClass1) != coroutine_suspended) {
                        trackingParameters2 = trackingParameters;
                        eventData2 = eventData;
                        trackingParameters = trackingParameters2;
                        eventData = eventData2;
                    }
                }
                failure = new Either.Success(new TrackingResult(eventData, trackingParameters));
                if (failure instanceof Either.Success) {
                    Result.Companion companion7 = Result.INSTANCE;
                    return Result.m11241constructorimpl(((Either.Success) failure).getValue());
                }
                if (!(failure instanceof Either.Failure)) {
                    throw new NoWhenBranchMatchedException();
                }
                Result.Companion companion8 = Result.INSTANCE;
                return Result.m11241constructorimpl(ResultKt.createFailure(((Either.Failure) failure).getError()));
            }
            return coroutine_suspended;
        } catch (Throwable th) {
            if (ErrorTrackingKt.shouldLog(th) && Superwall.INSTANCE.getInitialized()) {
                ErrorTrackingKt.trackError(Superwall.INSTANCE.getInstance(), th);
            }
            failure = new Either.Failure(th);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.analytics.internal.TrackingKt$trackSync$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Tracking.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/superwall/sdk/analytics/internal/TrackingResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.analytics.internal.TrackingKt$trackSync$1", f = "Tracking.kt", i = {}, l = {122}, m = "invokeSuspend", n = {}, s = {})
    static final class C04541 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends TrackingResult>>, Object> {
        final /* synthetic */ Trackable $event;
        final /* synthetic */ Superwall $this_trackSync;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C04541(Superwall superwall, Trackable trackable, Continuation<? super C04541> continuation) {
            super(2, continuation);
            this.$this_trackSync = superwall;
            this.$event = trackable;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C04541(this.$this_trackSync, this.$event, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends TrackingResult>> continuation) {
            return invoke2(coroutineScope, (Continuation<? super Result<TrackingResult>>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Result<TrackingResult>> continuation) {
            return ((C04541) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objTrack;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                objTrack = TrackingKt.track(this.$this_trackSync, this.$event, this);
                if (objTrack == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                objTrack = ((Result) obj).getValue();
            }
            return Result.m11240boximpl(objTrack);
        }
    }

    public static final Object trackSync(Superwall superwall, Trackable event) {
        Intrinsics.checkNotNullParameter(superwall, "<this>");
        Intrinsics.checkNotNullParameter(event, "event");
        return ((Result) BuildersKt__BuildersKt.runBlocking$default(null, new C04541(superwall, event, null), 1, null)).getValue();
    }

    /* JADX INFO: renamed from: com.superwall.sdk.analytics.internal.TrackingKt$handleImplicitTrigger$2, reason: invalid class name */
    /* JADX INFO: compiled from: Tracking.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.analytics.internal.TrackingKt$handleImplicitTrigger$2", f = "Tracking.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Trackable $event;
        final /* synthetic */ EventData $eventData;
        final /* synthetic */ Superwall $this_handleImplicitTrigger;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Superwall superwall, Trackable trackable, EventData eventData, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$this_handleImplicitTrigger = superwall;
            this.$event = trackable;
            this.$eventData = eventData;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$this_handleImplicitTrigger, this.$event, this.$eventData, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: com.superwall.sdk.analytics.internal.TrackingKt$handleImplicitTrigger$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: Tracking.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.superwall.sdk.analytics.internal.TrackingKt$handleImplicitTrigger$2$1", f = "Tracking.kt", i = {}, l = {137}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
            final /* synthetic */ Trackable $event;
            final /* synthetic */ EventData $eventData;
            final /* synthetic */ Superwall $this_handleImplicitTrigger;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(Superwall superwall, Trackable trackable, EventData eventData, Continuation<? super AnonymousClass1> continuation) {
                super(1, continuation);
                this.$this_handleImplicitTrigger = superwall;
                this.$event = trackable;
                this.$eventData = eventData;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Continuation<?> continuation) {
                return new AnonymousClass1(this.$this_handleImplicitTrigger, this.$event, this.$eventData, continuation);
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
                    if (TrackingKt.internallyHandleImplicitTrigger(this.$this_handleImplicitTrigger, this.$event, this.$eventData, this) == coroutine_suspended) {
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

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.$this_handleImplicitTrigger.getSerialTaskManager().addTask(new AnonymousClass1(this.$this_handleImplicitTrigger, this.$event, this.$eventData, null));
            return Unit.INSTANCE;
        }
    }

    public static final Object handleImplicitTrigger(Superwall superwall, Trackable trackable, EventData eventData, Continuation<? super Unit> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new AnonymousClass2(superwall, trackable, eventData, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.superwall.sdk.analytics.internal.TrackingKt$internallyHandleImplicitTrigger$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Tracking.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/misc/Either;", "", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.analytics.internal.TrackingKt$internallyHandleImplicitTrigger$2", f = "Tracking.kt", i = {0, 2, 2, 3, 3, 4, 4}, l = {156, 158, 174, 179, 181, 198}, m = "invokeSuspend", n = {"request", "request", "statePublisher", "request", "lastPresentationItems", "request", "lastPresentationItems"}, s = {"L$2", "L$1", "L$2", "L$1", "L$2", "L$1", "L$2"})
    static final class C04532 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Either<? extends Unit, Throwable>>, Object> {
        final /* synthetic */ Trackable $event;
        final /* synthetic */ EventData $eventData;
        final /* synthetic */ Superwall $this_internallyHandleImplicitTrigger;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C04532(EventData eventData, Superwall superwall, Trackable trackable, Continuation<? super C04532> continuation) {
            super(2, continuation);
            this.$eventData = eventData;
            this.$this_internallyHandleImplicitTrigger = superwall;
            this.$event = trackable;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C04532(this.$eventData, this.$this_internallyHandleImplicitTrigger, this.$event, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Either<? extends Unit, Throwable>> continuation) {
            return invoke2(coroutineScope, (Continuation<? super Either<Unit, Throwable>>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Either<Unit, Throwable>> continuation) {
            return ((C04532) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:30:0x00d5 A[Catch: all -> 0x0177, TryCatch #1 {all -> 0x0177, blocks: (B:6:0x0015, B:65:0x016d, B:9:0x0026, B:51:0x012a, B:57:0x0140, B:12:0x0037, B:45:0x0113, B:47:0x0119, B:15:0x004b, B:28:0x00a7, B:30:0x00d5, B:36:0x00ed, B:38:0x00f5, B:41:0x0101, B:52:0x012f, B:54:0x0137, B:62:0x015d, B:23:0x006d), top: B:77:0x000a }] */
        /* JADX WARN: Code duplicated, block: B:32:0x00e4  */
        /* JADX WARN: Code duplicated, block: B:33:0x00e6  */
        /* JADX WARN: Code duplicated, block: B:36:0x00ed A[Catch: all -> 0x0177, TryCatch #1 {all -> 0x0177, blocks: (B:6:0x0015, B:65:0x016d, B:9:0x0026, B:51:0x012a, B:57:0x0140, B:12:0x0037, B:45:0x0113, B:47:0x0119, B:15:0x004b, B:28:0x00a7, B:30:0x00d5, B:36:0x00ed, B:38:0x00f5, B:41:0x0101, B:52:0x012f, B:54:0x0137, B:62:0x015d, B:23:0x006d), top: B:77:0x000a }] */
        /* JADX WARN: Code duplicated, block: B:38:0x00f5 A[Catch: all -> 0x0177, TryCatch #1 {all -> 0x0177, blocks: (B:6:0x0015, B:65:0x016d, B:9:0x0026, B:51:0x012a, B:57:0x0140, B:12:0x0037, B:45:0x0113, B:47:0x0119, B:15:0x004b, B:28:0x00a7, B:30:0x00d5, B:36:0x00ed, B:38:0x00f5, B:41:0x0101, B:52:0x012f, B:54:0x0137, B:62:0x015d, B:23:0x006d), top: B:77:0x000a }] */
        /* JADX WARN: Code duplicated, block: B:40:0x00ff  */
        /* JADX WARN: Code duplicated, block: B:41:0x0101 A[Catch: all -> 0x0177, TryCatch #1 {all -> 0x0177, blocks: (B:6:0x0015, B:65:0x016d, B:9:0x0026, B:51:0x012a, B:57:0x0140, B:12:0x0037, B:45:0x0113, B:47:0x0119, B:15:0x004b, B:28:0x00a7, B:30:0x00d5, B:36:0x00ed, B:38:0x00f5, B:41:0x0101, B:52:0x012f, B:54:0x0137, B:62:0x015d, B:23:0x006d), top: B:77:0x000a }] */
        /* JADX WARN: Code duplicated, block: B:43:0x0110  */
        /* JADX WARN: Code duplicated, block: B:44:0x0111  */
        /* JADX WARN: Code duplicated, block: B:47:0x0119 A[Catch: all -> 0x0177, TryCatch #1 {all -> 0x0177, blocks: (B:6:0x0015, B:65:0x016d, B:9:0x0026, B:51:0x012a, B:57:0x0140, B:12:0x0037, B:45:0x0113, B:47:0x0119, B:15:0x004b, B:28:0x00a7, B:30:0x00d5, B:36:0x00ed, B:38:0x00f5, B:41:0x0101, B:52:0x012f, B:54:0x0137, B:62:0x015d, B:23:0x006d), top: B:77:0x000a }] */
        /* JADX WARN: Code duplicated, block: B:49:0x0128  */
        /* JADX WARN: Code duplicated, block: B:50:0x0129  */
        /* JADX WARN: Code duplicated, block: B:52:0x012f A[Catch: all -> 0x0177, TryCatch #1 {all -> 0x0177, blocks: (B:6:0x0015, B:65:0x016d, B:9:0x0026, B:51:0x012a, B:57:0x0140, B:12:0x0037, B:45:0x0113, B:47:0x0119, B:15:0x004b, B:28:0x00a7, B:30:0x00d5, B:36:0x00ed, B:38:0x00f5, B:41:0x0101, B:52:0x012f, B:54:0x0137, B:62:0x015d, B:23:0x006d), top: B:77:0x000a }] */
        /* JADX WARN: Code duplicated, block: B:57:0x0140 A[Catch: all -> 0x0177, PHI: r5 r6 r8
          0x0140: PHI (r5v15 com.superwall.sdk.paywall.presentation.internal.PresentationRequest) = 
          (r5v4 com.superwall.sdk.paywall.presentation.internal.PresentationRequest)
          (r5v4 com.superwall.sdk.paywall.presentation.internal.PresentationRequest)
          (r5v17 com.superwall.sdk.paywall.presentation.internal.PresentationRequest)
         binds: [B:53:0x0135, B:55:0x013d, B:35:0x00ea] A[DONT_GENERATE, DONT_INLINE]
          0x0140: PHI (r6v5 com.superwall.sdk.Superwall) = (r6v2 com.superwall.sdk.Superwall), (r6v2 com.superwall.sdk.Superwall), (r6v6 com.superwall.sdk.Superwall) binds: [B:53:0x0135, B:55:0x013d, B:35:0x00ea] A[DONT_GENERATE, DONT_INLINE]
          0x0140: PHI (r8v12 kotlinx.coroutines.flow.MutableSharedFlow<com.superwall.sdk.paywall.presentation.internal.state.PaywallState>) = 
          (r8v9 kotlinx.coroutines.flow.MutableSharedFlow<com.superwall.sdk.paywall.presentation.internal.state.PaywallState>)
          (r8v9 kotlinx.coroutines.flow.MutableSharedFlow<com.superwall.sdk.paywall.presentation.internal.state.PaywallState>)
          (r8v13 kotlinx.coroutines.flow.MutableSharedFlow<com.superwall.sdk.paywall.presentation.internal.state.PaywallState>)
         binds: [B:53:0x0135, B:55:0x013d, B:35:0x00ea] A[DONT_GENERATE, DONT_INLINE], TryCatch #1 {all -> 0x0177, blocks: (B:6:0x0015, B:65:0x016d, B:9:0x0026, B:51:0x012a, B:57:0x0140, B:12:0x0037, B:45:0x0113, B:47:0x0119, B:15:0x004b, B:28:0x00a7, B:30:0x00d5, B:36:0x00ed, B:38:0x00f5, B:41:0x0101, B:52:0x012f, B:54:0x0137, B:62:0x015d, B:23:0x006d), top: B:77:0x000a }] */
        /* JADX WARN: Code duplicated, block: B:59:0x015a  */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x016a, code lost:
        
            if (com.superwall.sdk.paywall.presentation.internal.operators.LogErrorsKt.logErrors(r6, r5, r0, r18) == r2) goto L64;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r19) {
            /*
                Method dump skipped, instruction units count: 426
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.superwall.sdk.analytics.internal.TrackingKt.C04532.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object internallyHandleImplicitTrigger(Superwall superwall, Trackable trackable, EventData eventData, Continuation<? super Either<Unit, Throwable>> continuation) {
        return BuildersKt.withContext(Dispatchers.getMain(), new C04532(eventData, superwall, trackable, null), continuation);
    }
}
