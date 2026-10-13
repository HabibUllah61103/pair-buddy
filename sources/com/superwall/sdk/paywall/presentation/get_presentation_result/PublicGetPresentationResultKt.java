package com.superwall.sdk.paywall.presentation.get_presentation_result;

import androidx.core.app.NotificationCompat;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.analytics.internal.TrackingLogic;
import com.superwall.sdk.analytics.internal.TrackingParameters;
import com.superwall.sdk.analytics.internal.trackable.Trackable;
import com.superwall.sdk.analytics.internal.trackable.UserInitiatedEvent;
import com.superwall.sdk.dependencies.DependencyContainer;
import com.superwall.sdk.dependencies.RequestFactory;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.models.events.EventData;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequest;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequestType;
import com.superwall.sdk.paywall.presentation.internal.request.PresentationInfo;
import com.superwall.sdk.paywall.presentation.result.PresentationResult;
import com.superwall.sdk.utilities.ErrorTrackingKt;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: PublicGetPresentationResult.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a8\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0016\b\u0002\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007H\u0086@¢\u0006\u0002\u0010\t\u001a5\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0016\b\u0002\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007¢\u0006\u0002\u0010\u000b\u001a\"\u0010\f\u001a\u00020\u0002*\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0080@¢\u0006\u0002\u0010\u0011¨\u0006\u0012"}, d2 = {"getPresentationResult", "Lkotlin/Result;", "Lcom/superwall/sdk/paywall/presentation/result/PresentationResult;", "Lcom/superwall/sdk/Superwall;", "placement", "", "params", "", "", "(Lcom/superwall/sdk/Superwall;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPresentationResultSync", "(Lcom/superwall/sdk/Superwall;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;", "internallyGetPresentationResult", NotificationCompat.CATEGORY_EVENT, "Lcom/superwall/sdk/analytics/internal/trackable/Trackable;", "isImplicit", "", "(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class PublicGetPresentationResultKt {

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.get_presentation_result.PublicGetPresentationResultKt$getPresentationResult$1, reason: invalid class name */
    /* JADX INFO: compiled from: PublicGetPresentationResult.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.get_presentation_result.PublicGetPresentationResultKt", f = "PublicGetPresentationResult.kt", i = {}, l = {43}, m = "getPresentationResult", n = {}, s = {})
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
            Object presentationResult = PublicGetPresentationResultKt.getPresentationResult(null, null, null, this);
            return presentationResult == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? presentationResult : Result.m11240boximpl(presentationResult);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.get_presentation_result.PublicGetPresentationResultKt$internallyGetPresentationResult$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PublicGetPresentationResult.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.get_presentation_result.PublicGetPresentationResultKt", f = "PublicGetPresentationResult.kt", i = {0, 0, 0, 0}, l = {81, 106}, m = "internallyGetPresentationResult", n = {"$this$internallyGetPresentationResult", NotificationCompat.CATEGORY_EVENT, "eventCreatedAt", "isImplicit"}, s = {"L$0", "L$1", "L$2", "Z$0"})
    static final class C05191 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        C05191(Continuation<? super C05191> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PublicGetPresentationResultKt.internallyGetPresentationResult(null, null, false, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final Object getPresentationResult(Superwall superwall, String str, Map<String, ? extends Object> map, Continuation<? super Result<? extends PresentationResult>> continuation) {
        AnonymousClass1 anonymousClass1;
        Either failure;
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
        Object objInternallyGetPresentationResult = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(objInternallyGetPresentationResult);
                if (map == null) {
                    map = MapsKt.emptyMap();
                }
                UserInitiatedEvent.Track track = new UserInitiatedEvent.Track(str, false, false, new HashMap(map));
                anonymousClass1.label = 1;
                objInternallyGetPresentationResult = internallyGetPresentationResult(superwall, track, false, anonymousClass1);
                if (objInternallyGetPresentationResult == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(objInternallyGetPresentationResult);
            }
            failure = new Either.Success((PresentationResult) objInternallyGetPresentationResult);
        } catch (Throwable th) {
            if (ErrorTrackingKt.shouldLog(th) && Superwall.INSTANCE.getInitialized()) {
                ErrorTrackingKt.trackError(Superwall.INSTANCE.getInstance(), th);
            }
            failure = new Either.Failure(th);
        }
        if (failure instanceof Either.Success) {
            Result.Companion companion = Result.INSTANCE;
            return Result.m11241constructorimpl(((Either.Success) failure).getValue());
        }
        if (!(failure instanceof Either.Failure)) {
            throw new NoWhenBranchMatchedException();
        }
        Result.Companion companion2 = Result.INSTANCE;
        return Result.m11241constructorimpl(ResultKt.createFailure(((Either.Failure) failure).getError()));
    }

    public static /* synthetic */ Object getPresentationResult$default(Superwall superwall, String str, Map map, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            map = null;
        }
        return getPresentationResult(superwall, str, map, continuation);
    }

    public static /* synthetic */ Object getPresentationResultSync$default(Superwall superwall, String str, Map map, int i, Object obj) {
        if ((i & 2) != 0) {
            map = null;
        }
        return getPresentationResultSync(superwall, str, map);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.get_presentation_result.PublicGetPresentationResultKt$getPresentationResultSync$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PublicGetPresentationResult.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/superwall/sdk/paywall/presentation/result/PresentationResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.get_presentation_result.PublicGetPresentationResultKt$getPresentationResultSync$1", f = "PublicGetPresentationResult.kt", i = {}, l = {69}, m = "invokeSuspend", n = {}, s = {})
    static final class C05181 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends PresentationResult>>, Object> {
        final /* synthetic */ Map<String, Object> $params;
        final /* synthetic */ String $placement;
        final /* synthetic */ Superwall $this_getPresentationResultSync;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05181(Superwall superwall, String str, Map<String, ? extends Object> map, Continuation<? super C05181> continuation) {
            super(2, continuation);
            this.$this_getPresentationResultSync = superwall;
            this.$placement = str;
            this.$params = map;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C05181(this.$this_getPresentationResultSync, this.$placement, this.$params, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends PresentationResult>> continuation) {
            return ((C05181) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object presentationResult;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                presentationResult = PublicGetPresentationResultKt.getPresentationResult(this.$this_getPresentationResultSync, this.$placement, this.$params, this);
                if (presentationResult == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                presentationResult = ((Result) obj).getValue();
            }
            return Result.m11240boximpl(presentationResult);
        }
    }

    public static final Object getPresentationResultSync(Superwall superwall, String placement, Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(superwall, "<this>");
        Intrinsics.checkNotNullParameter(placement, "placement");
        return ((Result) BuildersKt__BuildersKt.runBlocking$default(null, new C05181(superwall, placement, map, null), 1, null)).getValue();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    public static final Object internallyGetPresentationResult(Superwall superwall, Trackable trackable, boolean z, Continuation<? super PresentationResult> continuation) {
        C05191 c05191;
        Date date;
        boolean z2;
        Superwall superwall2;
        PresentationRequestType.GetPresentationResult getPresentationResult;
        Trackable trackable2 = trackable;
        if (continuation instanceof C05191) {
            c05191 = (C05191) continuation;
            if ((c05191.label & Integer.MIN_VALUE) != 0) {
                c05191.label -= Integer.MIN_VALUE;
            } else {
                c05191 = new C05191(continuation);
            }
        } else {
            c05191 = new C05191(continuation);
        }
        Object objProcessParameters = c05191.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c05191.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objProcessParameters);
            date = new Date();
            TrackingLogic.Companion companion = TrackingLogic.INSTANCE;
            String id = superwall.getDependencyContainer$superwall_release().getAppSessionManager().getAppSession().getId();
            c05191.L$0 = superwall;
            c05191.L$1 = trackable2;
            c05191.L$2 = date;
            z2 = z;
            c05191.Z$0 = z2;
            c05191.label = 1;
            objProcessParameters = companion.processParameters(trackable2, id, c05191);
            if (objProcessParameters != coroutine_suspended) {
                superwall2 = superwall;
            }
        }
        if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objProcessParameters);
            return objProcessParameters;
        }
        boolean z3 = c05191.Z$0;
        date = (Date) c05191.L$2;
        Trackable trackable3 = (Trackable) c05191.L$1;
        superwall2 = (Superwall) c05191.L$0;
        ResultKt.throwOnFailure(objProcessParameters);
        z2 = z3;
        trackable2 = trackable3;
        EventData eventData = new EventData((String) null, trackable2.getRawName(), ((TrackingParameters) objProcessParameters).getAudienceFilterParams(), date, 1, (DefaultConstructorMarker) null);
        DependencyContainer dependencyContainer$superwall_release = superwall2.getDependencyContainer$superwall_release();
        PresentationInfo.ExplicitTrigger explicitTrigger = new PresentationInfo.ExplicitTrigger(eventData);
        Boolean boolBoxBoolean = Boxing.boxBoolean(false);
        if (z2) {
            getPresentationResult = PresentationRequestType.GetImplicitPresentationResult.INSTANCE;
        } else {
            getPresentationResult = PresentationRequestType.GetPresentationResult.INSTANCE;
        }
        PresentationRequest presentationRequestMakePresentationRequest$default = RequestFactory.DefaultImpls.makePresentationRequest$default(dependencyContainer$superwall_release, explicitTrigger, null, null, boolBoxBoolean, null, false, getPresentationResult, 22, null);
        c05191.L$0 = null;
        c05191.L$1 = null;
        c05191.L$2 = null;
        c05191.label = 2;
        Object presentationResult = InternalGetPresentationResultKt.getPresentationResult(superwall2, presentationRequestMakePresentationRequest$default, c05191);
        return presentationResult == coroutine_suspended ? coroutine_suspended : presentationResult;
    }
}
