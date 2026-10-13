package com.superwall.sdk.misc.primitives;

import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import com.reactcommunity.rndatetimepicker.RNConstants;
import com.superwall.sdk.analytics.internal.trackable.TrackableSuperwallEvent;
import com.superwall.sdk.misc.primitives.BaseContext;
import com.superwall.sdk.storage.Storable;
import com.superwall.sdk.storage.Storage;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: compiled from: BaseContext.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0014\b\u0001\u0010\u0002*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00002\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0003J-\u0010\u0010\u001a\u00020\f\"\b\b\u0002\u0010\u0011*\u00020\r2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u00110\u00132\u0006\u0010\u0014\u001a\u0002H\u0011H\u0016¢\u0006\u0002\u0010\u0015J-\u0010\u0016\u001a\b\u0012\u0004\u0012\u0002H\u00110\u0017\"\b\b\u0002\u0010\u0011*\u00020\r2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u00110\u0013H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0014\u0010\u001a\u001a\u00020\f2\n\u0010\u0012\u001a\u0006\u0012\u0002\b\u00030\u0013H\u0016J\u0010\u0010\u001b\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\nH\u0016R\u0012\u0010\u0004\u001a\u00020\u0005X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R.\u0010\b\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\r0\tX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001d"}, d2 = {"Lcom/superwall/sdk/misc/primitives/BaseContext;", ExifInterface.LATITUDE_SOUTH, "Self", "Lcom/superwall/sdk/misc/primitives/StoreContext;", "storage", "Lcom/superwall/sdk/storage/Storage;", "getStorage", "()Lcom/superwall/sdk/storage/Storage;", "tracker", "Lkotlin/Function2;", "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;", "Lkotlin/coroutines/Continuation;", "", "", "getTracker", "()Lkotlin/jvm/functions/Function2;", "persist", ExifInterface.GPS_DIRECTION_TRUE, "storable", "Lcom/superwall/sdk/storage/Storable;", RNConstants.ARG_VALUE, "(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V", "read", "Lkotlin/Result;", "read-IoAF18A", "(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;", "delete", "track", NotificationCompat.CATEGORY_EVENT, "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface BaseContext<S, Self extends BaseContext<S, Self>> extends StoreContext<S, Self> {
    void delete(Storable<?> storable);

    Storage getStorage();

    Function2<TrackableSuperwallEvent, Continuation<? super Unit>, Object> getTracker();

    <T> void persist(Storable<T> storable, T value);

    /* JADX INFO: renamed from: read-IoAF18A */
    <T> Object mo10584readIoAF18A(Storable<T> storable);

    void track(TrackableSuperwallEvent event);

    /* JADX INFO: compiled from: BaseContext.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public static final class DefaultImpls {
        public static <S, Self extends BaseContext<S, Self>> void effect(BaseContext<S, Self> baseContext, TypedAction<Self> action) {
            Intrinsics.checkNotNullParameter(action, "action");
            StoreContext.DefaultImpls.effect(baseContext, action);
        }

        public static <S, Self extends BaseContext<S, Self>> StateFlow<S> getState(BaseContext<S, Self> baseContext) {
            return StoreContext.DefaultImpls.getState(baseContext);
        }

        public static <S, Self extends BaseContext<S, Self>> Object immediate(BaseContext<S, Self> baseContext, TypedAction<Self> typedAction, Continuation<? super Unit> continuation) {
            Object objImmediate = StoreContext.DefaultImpls.immediate(baseContext, typedAction, continuation);
            return objImmediate == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objImmediate : Unit.INSTANCE;
        }

        public static <S, Self extends BaseContext<S, Self>> Object immediateUntil(BaseContext<S, Self> baseContext, TypedAction<Self> typedAction, Function1<? super S, Boolean> function1, Continuation<? super Unit> continuation) {
            Object objImmediateUntil = StoreContext.DefaultImpls.immediateUntil(baseContext, typedAction, function1, continuation);
            return objImmediateUntil == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objImmediateUntil : Unit.INSTANCE;
        }

        public static <S, Self extends BaseContext<S, Self>> void sideEffect(BaseContext<S, Self> baseContext, Function1<? super Continuation<? super Unit>, ? extends Object> what) {
            Intrinsics.checkNotNullParameter(what, "what");
            StoreContext.DefaultImpls.sideEffect(baseContext, what);
        }

        public static <S, Self extends BaseContext<S, Self>> void update(BaseContext<S, Self> baseContext, Reducer<S> reducer) {
            Intrinsics.checkNotNullParameter(reducer, "reducer");
            StoreContext.DefaultImpls.update(baseContext, reducer);
        }

        public static <S, Self extends BaseContext<S, Self>, T> void persist(BaseContext<S, Self> baseContext, Storable<T> storable, T value) {
            Intrinsics.checkNotNullParameter(storable, "storable");
            Intrinsics.checkNotNullParameter(value, "value");
            baseContext.getStorage().write(storable, value);
        }

        /* JADX INFO: renamed from: read-IoAF18A, reason: not valid java name */
        public static <S, Self extends BaseContext<S, Self>, T> Object m10630readIoAF18A(BaseContext<S, Self> baseContext, Storable<T> storable) {
            Intrinsics.checkNotNullParameter(storable, "storable");
            Object obj = baseContext.getStorage().read(storable);
            if (obj != null) {
                Result.Companion companion = Result.INSTANCE;
                return Result.m11241constructorimpl(obj);
            }
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m11241constructorimpl(ResultKt.createFailure(new IllegalArgumentException("Not found")));
        }

        public static <S, Self extends BaseContext<S, Self>> void delete(BaseContext<S, Self> baseContext, Storable<?> storable) {
            Intrinsics.checkNotNullParameter(storable, "storable");
            baseContext.getStorage().delete(storable);
        }

        public static <S, Self extends BaseContext<S, Self>> void track(BaseContext<S, Self> baseContext, TrackableSuperwallEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            BuildersKt__Builders_commonKt.launch$default(baseContext.getScope(), null, null, new AnonymousClass1(baseContext, event, null), 3, null);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.misc.primitives.BaseContext$track$1, reason: invalid class name */
    /* JADX INFO: compiled from: BaseContext.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.misc.primitives.BaseContext$track$1", f = "BaseContext.kt", i = {}, l = {38}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ TrackableSuperwallEvent $event;
        int label;
        final /* synthetic */ BaseContext<S, Self> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(BaseContext<S, Self> baseContext, TrackableSuperwallEvent trackableSuperwallEvent, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = baseContext;
            this.$event = trackableSuperwallEvent;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, this.$event, continuation);
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
                Function2<TrackableSuperwallEvent, Continuation<? super Unit>, Object> tracker = this.this$0.getTracker();
                TrackableSuperwallEvent trackableSuperwallEvent = this.$event;
                this.label = 1;
                if (tracker.invoke(trackableSuperwallEvent, this) == coroutine_suspended) {
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
