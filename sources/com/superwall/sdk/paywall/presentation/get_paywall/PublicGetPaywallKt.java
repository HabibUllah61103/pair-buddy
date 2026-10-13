package com.superwall.sdk.paywall.presentation.get_paywall;

import androidx.appcompat.app.AppCompatDelegate;
import com.superwall.sdk.Superwall;
import com.superwall.sdk.analytics.internal.TrackingKt;
import com.superwall.sdk.analytics.internal.TrackingResult;
import com.superwall.sdk.analytics.internal.trackable.UserInitiatedEvent;
import com.superwall.sdk.dependencies.DependencyContainer;
import com.superwall.sdk.dependencies.RequestFactory;
import com.superwall.sdk.misc.Either;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequest;
import com.superwall.sdk.paywall.presentation.internal.PresentationRequestType;
import com.superwall.sdk.paywall.presentation.internal.request.PaywallOverrides;
import com.superwall.sdk.paywall.presentation.internal.request.PresentationInfo;
import com.superwall.sdk.paywall.view.PaywallView;
import com.superwall.sdk.paywall.view.delegate.PaywallViewCallback;
import com.superwall.sdk.paywall.view.delegate.PaywallViewDelegateAdapter;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;

/* JADX INFO: compiled from: PublicGetPaywall.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aF\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0016\b\u0002\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bH\u0087@¢\u0006\u0002\u0010\f\u001aL\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00010\u000e*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0016\b\u0002\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bH\u0087@¢\u0006\u0002\u0010\f\u001aR\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00110\u0010*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0016\b\u0002\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u0012H\u0082@¢\u0006\u0002\u0010\u0013¨\u0006\u0014"}, d2 = {"getPaywallOrThrow", "Lcom/superwall/sdk/paywall/view/PaywallView;", "Lcom/superwall/sdk/Superwall;", "placement", "", "params", "", "", "paywallOverrides", "Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;", "delegate", "Lcom/superwall/sdk/paywall/view/delegate/PaywallViewCallback;", "(Lcom/superwall/sdk/Superwall;Ljava/lang/String;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPaywall", "Lkotlin/Result;", "internallyGetPaywall", "Lcom/superwall/sdk/misc/Either;", "", "Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;", "(Lcom/superwall/sdk/Superwall;Ljava/lang/String;Ljava/util/Map;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;Lcom/superwall/sdk/paywall/view/delegate/PaywallViewDelegateAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class PublicGetPaywallKt {

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.get_paywall.PublicGetPaywallKt$getPaywall$1, reason: invalid class name */
    /* JADX INFO: compiled from: PublicGetPaywall.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.get_paywall.PublicGetPaywallKt", f = "PublicGetPaywall.kt", i = {}, l = {52}, m = "getPaywall", n = {}, s = {})
    static final class AnonymousClass1 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            Object paywall = PublicGetPaywallKt.getPaywall(null, null, null, null, null, this);
            return paywall == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? paywall : Result.m11240boximpl(paywall);
        }
    }

    public static /* synthetic */ Object getPaywallOrThrow$default(Superwall superwall, String str, Map map, PaywallOverrides paywallOverrides, PaywallViewCallback paywallViewCallback, Continuation continuation, int i, Object obj) throws Throwable {
        if ((i & 2) != 0) {
            map = null;
        }
        if ((i & 4) != 0) {
            paywallOverrides = null;
        }
        return getPaywallOrThrow(superwall, str, map, paywallOverrides, paywallViewCallback, continuation);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.get_paywall.PublicGetPaywallKt$getPaywallOrThrow$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PublicGetPaywall.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/paywall/view/PaywallView;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.get_paywall.PublicGetPaywallKt$getPaywallOrThrow$2", f = "PublicGetPaywall.kt", i = {}, l = {27}, m = "invokeSuspend", n = {}, s = {})
    static final class C05162 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super PaywallView>, Object> {
        final /* synthetic */ PaywallViewCallback $delegate;
        final /* synthetic */ Map<String, Object> $params;
        final /* synthetic */ PaywallOverrides $paywallOverrides;
        final /* synthetic */ String $placement;
        final /* synthetic */ Superwall $this_getPaywallOrThrow;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05162(Superwall superwall, String str, Map<String, ? extends Object> map, PaywallOverrides paywallOverrides, PaywallViewCallback paywallViewCallback, Continuation<? super C05162> continuation) {
            super(2, continuation);
            this.$this_getPaywallOrThrow = superwall;
            this.$placement = str;
            this.$params = map;
            this.$paywallOverrides = paywallOverrides;
            this.$delegate = paywallViewCallback;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C05162(this.$this_getPaywallOrThrow, this.$placement, this.$params, this.$paywallOverrides, this.$delegate, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super PaywallView> continuation) {
            return ((C05162) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objM11241constructorimpl;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = PublicGetPaywallKt.internallyGetPaywall(this.$this_getPaywallOrThrow, this.$placement, this.$params, this.$paywallOverrides, new PaywallViewDelegateAdapter(this.$delegate), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            Either either = (Either) obj;
            if (either instanceof Either.Success) {
                Result.Companion companion = Result.INSTANCE;
                objM11241constructorimpl = Result.m11241constructorimpl(((Either.Success) either).getValue());
            } else {
                if (!(either instanceof Either.Failure)) {
                    throw new NoWhenBranchMatchedException();
                }
                Result.Companion companion2 = Result.INSTANCE;
                objM11241constructorimpl = Result.m11241constructorimpl(ResultKt.createFailure(((Either.Failure) either).getError()));
            }
            ResultKt.throwOnFailure(objM11241constructorimpl);
            PaywallView paywallView = (PaywallView) objM11241constructorimpl;
            paywallView.prepareToDisplay();
            return paywallView;
        }
    }

    @Deprecated(message = "Will be removed in the upcoming versions, use Superwall.getPaywall instead")
    public static final Object getPaywallOrThrow(Superwall superwall, String str, Map<String, ? extends Object> map, PaywallOverrides paywallOverrides, PaywallViewCallback paywallViewCallback, Continuation<? super PaywallView> continuation) throws Throwable {
        return BuildersKt.withContext(Dispatchers.getMain(), new C05162(superwall, str, map, paywallOverrides, paywallViewCallback, null), continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    @Deprecated(message = "Will be removed in the upcoming versions, use `PaywallBuilder` instead")
    public static final Object getPaywall(Superwall superwall, String str, Map<String, ? extends Object> map, PaywallOverrides paywallOverrides, PaywallViewCallback paywallViewCallback, Continuation<? super Result<PaywallView>> continuation) throws Throwable {
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
        Object objWithContext = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objWithContext);
            MainCoroutineDispatcher main = Dispatchers.getMain();
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(superwall, str, map, paywallOverrides, paywallViewCallback, null);
            anonymousClass1.label = 1;
            objWithContext = BuildersKt.withContext(main, anonymousClass2, anonymousClass1);
            if (objWithContext == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objWithContext);
        }
        return ((Result) objWithContext).getValue();
    }

    public static /* synthetic */ Object getPaywall$default(Superwall superwall, String str, Map map, PaywallOverrides paywallOverrides, PaywallViewCallback paywallViewCallback, Continuation continuation, int i, Object obj) throws Throwable {
        if ((i & 2) != 0) {
            map = null;
        }
        if ((i & 4) != 0) {
            paywallOverrides = null;
        }
        return getPaywall(superwall, str, map, paywallOverrides, paywallViewCallback, continuation);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.get_paywall.PublicGetPaywallKt$getPaywall$2, reason: invalid class name */
    /* JADX INFO: compiled from: PublicGetPaywall.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/superwall/sdk/paywall/view/PaywallView;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.get_paywall.PublicGetPaywallKt$getPaywall$2", f = "PublicGetPaywall.kt", i = {}, l = {54}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends PaywallView>>, Object> {
        final /* synthetic */ PaywallViewCallback $delegate;
        final /* synthetic */ Map<String, Object> $params;
        final /* synthetic */ PaywallOverrides $paywallOverrides;
        final /* synthetic */ String $placement;
        final /* synthetic */ Superwall $this_getPaywall;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Superwall superwall, String str, Map<String, ? extends Object> map, PaywallOverrides paywallOverrides, PaywallViewCallback paywallViewCallback, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$this_getPaywall = superwall;
            this.$placement = str;
            this.$params = map;
            this.$paywallOverrides = paywallOverrides;
            this.$delegate = paywallViewCallback;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$this_getPaywall, this.$placement, this.$params, this.$paywallOverrides, this.$delegate, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends PaywallView>> continuation) {
            return invoke2(coroutineScope, (Continuation<? super Result<PaywallView>>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Result<PaywallView>> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objM11241constructorimpl;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = PublicGetPaywallKt.internallyGetPaywall(this.$this_getPaywall, this.$placement, this.$params, this.$paywallOverrides, new PaywallViewDelegateAdapter(this.$delegate), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            Either either = (Either) obj;
            boolean z = either instanceof Either.Success;
            if (z) {
                Either.Success success = (Either.Success) either;
                ((PaywallView) success.getValue()).prepareToDisplay();
                if (z) {
                    Result.Companion companion = Result.INSTANCE;
                    objM11241constructorimpl = Result.m11241constructorimpl(success.getValue());
                } else {
                    if (!(either instanceof Either.Failure)) {
                        throw new NoWhenBranchMatchedException();
                    }
                    Result.Companion companion2 = Result.INSTANCE;
                    objM11241constructorimpl = Result.m11241constructorimpl(ResultKt.createFailure(((Either.Failure) either).getError()));
                }
            } else {
                boolean z2 = either instanceof Either.Failure;
                if (!z2) {
                    throw new NoWhenBranchMatchedException();
                }
                if (z) {
                    Result.Companion companion3 = Result.INSTANCE;
                    objM11241constructorimpl = Result.m11241constructorimpl(((Either.Success) either).getValue());
                } else {
                    if (!z2) {
                        throw new NoWhenBranchMatchedException();
                    }
                    Result.Companion companion4 = Result.INSTANCE;
                    objM11241constructorimpl = Result.m11241constructorimpl(ResultKt.createFailure(((Either.Failure) either).getError()));
                }
            }
            return Result.m11240boximpl(objM11241constructorimpl);
        }
    }

    static /* synthetic */ Object internallyGetPaywall$default(Superwall superwall, String str, Map map, PaywallOverrides paywallOverrides, PaywallViewDelegateAdapter paywallViewDelegateAdapter, Continuation continuation, int i, Object obj) throws Throwable {
        if ((i & 2) != 0) {
            map = null;
        }
        if ((i & 4) != 0) {
            paywallOverrides = null;
        }
        return internallyGetPaywall(superwall, str, map, paywallOverrides, paywallViewDelegateAdapter, continuation);
    }

    /* JADX INFO: renamed from: com.superwall.sdk.paywall.presentation.get_paywall.PublicGetPaywallKt$internallyGetPaywall$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PublicGetPaywall.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004H\n"}, d2 = {"<anonymous>", "Lcom/superwall/sdk/misc/Either;", "Lcom/superwall/sdk/paywall/view/PaywallView;", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.paywall.presentation.get_paywall.PublicGetPaywallKt$internallyGetPaywall$2", f = "PublicGetPaywall.kt", i = {}, l = {94, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY}, m = "invokeSuspend", n = {}, s = {})
    static final class C05172 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Either<? extends PaywallView, Throwable>>, Object> {
        final /* synthetic */ PaywallViewDelegateAdapter $delegate;
        final /* synthetic */ Map<String, Object> $params;
        final /* synthetic */ PaywallOverrides $paywallOverrides;
        final /* synthetic */ String $placement;
        final /* synthetic */ Superwall $this_internallyGetPaywall;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05172(Map<String, ? extends Object> map, String str, Superwall superwall, PaywallOverrides paywallOverrides, PaywallViewDelegateAdapter paywallViewDelegateAdapter, Continuation<? super C05172> continuation) {
            super(2, continuation);
            this.$params = map;
            this.$placement = str;
            this.$this_internallyGetPaywall = superwall;
            this.$paywallOverrides = paywallOverrides;
            this.$delegate = paywallViewDelegateAdapter;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C05172(this.$params, this.$placement, this.$this_internallyGetPaywall, this.$paywallOverrides, this.$delegate, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Either<? extends PaywallView, Throwable>> continuation) {
            return invoke2(coroutineScope, (Continuation<? super Either<PaywallView, Throwable>>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Either<PaywallView, Throwable>> continuation) {
            return ((C05172) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objTrack;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Map<String, Object> mapEmptyMap = this.$params;
                if (mapEmptyMap == null) {
                    mapEmptyMap = MapsKt.emptyMap();
                }
                UserInitiatedEvent.Track track = new UserInitiatedEvent.Track(this.$placement, false, false, mapEmptyMap);
                this.label = 1;
                objTrack = TrackingKt.track(this.$this_internallyGetPaywall, track, this);
                if (objTrack != coroutine_suspended) {
                }
            }
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            objTrack = ((Result) obj).getValue();
            if (Result.m11247isFailureimpl(objTrack)) {
                IllegalStateException illegalStateExceptionM11244exceptionOrNullimpl = Result.m11244exceptionOrNullimpl(objTrack);
                if (illegalStateExceptionM11244exceptionOrNullimpl == null) {
                    illegalStateExceptionM11244exceptionOrNullimpl = new IllegalStateException("Error in tracking event");
                }
                return new Either.Failure(illegalStateExceptionM11244exceptionOrNullimpl);
            }
            DependencyContainer dependencyContainer$superwall_release = this.$this_internallyGetPaywall.getDependencyContainer$superwall_release();
            ResultKt.throwOnFailure(objTrack);
            PresentationRequest presentationRequestMakePresentationRequest$default = RequestFactory.DefaultImpls.makePresentationRequest$default(dependencyContainer$superwall_release, new PresentationInfo.ExplicitTrigger(((TrackingResult) objTrack).getData()), this.$paywallOverrides, null, null, null, false, new PresentationRequestType.GetPaywall(this.$delegate), 28, null);
            this.label = 2;
            Object paywall$default = InternalGetPaywallKt.getPaywall$default(this.$this_internallyGetPaywall, presentationRequestMakePresentationRequest$default, null, this, 2, null);
            return paywall$default == coroutine_suspended ? coroutine_suspended : paywall$default;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object internallyGetPaywall(Superwall superwall, String str, Map<String, ? extends Object> map, PaywallOverrides paywallOverrides, PaywallViewDelegateAdapter paywallViewDelegateAdapter, Continuation<? super Either<PaywallView, Throwable>> continuation) throws Throwable {
        return BuildersKt.withContext(Dispatchers.getMain(), new C05172(map, str, superwall, paywallOverrides, paywallViewDelegateAdapter, null), continuation);
    }
}
