package com.superwall.sdk.misc.primitives;

import androidx.exifinterface.media.ExifInterface;
import com.superwall.sdk.misc.primitives.StoreContext;
import expo.modules.interfaces.permissions.PermissionsResponse;
import kotlin.Metadata;
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

/* JADX INFO: compiled from: StoreContext.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bf\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0014\b\u0001\u0010\u0002*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00002\b\u0012\u0004\u0012\u0002H\u00010\u0003J\u0016\u0010\u0010\u001a\u00020\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0013H\u0016J\u0016\u0010\u0014\u001a\u00020\u00112\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00010\u0016H\u0016J\u001c\u0010\u0017\u001a\u00020\u00112\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00010\u0016H\u0096@¢\u0006\u0002\u0010\u0018J0\u0010\u0019\u001a\u00020\u00112\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00010\u00162\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001c0\u001bH\u0096@¢\u0006\u0002\u0010\u001dJ+\u0010\u001e\u001a\u00020\u00112\u001c\u0010\u001f\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110 \u0012\u0006\u0012\u0004\u0018\u00010!0\u001bH\u0016¢\u0006\u0002\u0010\"R\u001e\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00000\u0005X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0012\u0010\b\u001a\u00020\tX¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006#"}, d2 = {"Lcom/superwall/sdk/misc/primitives/StoreContext;", ExifInterface.LATITUDE_SOUTH, "Self", "Lcom/superwall/sdk/misc/primitives/StateStore;", "actor", "Lcom/superwall/sdk/misc/primitives/StateActor;", "getActor", "()Lcom/superwall/sdk/misc/primitives/StateActor;", PermissionsResponse.SCOPE_KEY, "Lkotlinx/coroutines/CoroutineScope;", "getScope", "()Lkotlinx/coroutines/CoroutineScope;", "state", "Lkotlinx/coroutines/flow/StateFlow;", "getState", "()Lkotlinx/coroutines/flow/StateFlow;", "update", "", "reducer", "Lcom/superwall/sdk/misc/primitives/Reducer;", "effect", "action", "Lcom/superwall/sdk/misc/primitives/TypedAction;", "immediate", "(Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "immediateUntil", "until", "Lkotlin/Function1;", "", "(Lcom/superwall/sdk/misc/primitives/TypedAction;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sideEffect", "what", "Lkotlin/coroutines/Continuation;", "", "(Lkotlin/jvm/functions/Function1;)V", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface StoreContext<S, Self extends StoreContext<S, Self>> extends StateStore<S> {
    void effect(TypedAction<Self> action);

    StateActor<Self, S> getActor();

    CoroutineScope getScope();

    @Override // com.superwall.sdk.misc.primitives.StateStore
    StateFlow<S> getState();

    Object immediate(TypedAction<Self> typedAction, Continuation<? super Unit> continuation);

    Object immediateUntil(TypedAction<Self> typedAction, Function1<? super S, Boolean> function1, Continuation<? super Unit> continuation);

    void sideEffect(Function1<? super Continuation<? super Unit>, ? extends Object> what);

    @Override // com.superwall.sdk.misc.primitives.StateStore
    void update(Reducer<S> reducer);

    /* JADX INFO: compiled from: StoreContext.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public static final class DefaultImpls {
        public static <S, Self extends StoreContext<S, Self>> StateFlow<S> getState(StoreContext<S, Self> storeContext) {
            return storeContext.getActor().getState();
        }

        public static <S, Self extends StoreContext<S, Self>> void update(StoreContext<S, Self> storeContext, Reducer<S> reducer) {
            Intrinsics.checkNotNullParameter(reducer, "reducer");
            storeContext.getActor().update(reducer);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static <S, Self extends StoreContext<S, Self>> void effect(StoreContext<S, Self> storeContext, TypedAction<Self> action) {
            Intrinsics.checkNotNullParameter(action, "action");
            StateActor<Self, S> actor = storeContext.getActor();
            Intrinsics.checkNotNull(storeContext, "null cannot be cast to non-null type Self of com.superwall.sdk.misc.primitives.StoreContext");
            actor.effect(storeContext, action);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static <S, Self extends StoreContext<S, Self>> Object immediate(StoreContext<S, Self> storeContext, TypedAction<Self> typedAction, Continuation<? super Unit> continuation) {
            StateActor<Self, S> actor = storeContext.getActor();
            Intrinsics.checkNotNull(storeContext, "null cannot be cast to non-null type Self of com.superwall.sdk.misc.primitives.StoreContext");
            Object objImmediate = actor.immediate(storeContext, typedAction, continuation);
            return objImmediate == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objImmediate : Unit.INSTANCE;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static <S, Self extends StoreContext<S, Self>> Object immediateUntil(StoreContext<S, Self> storeContext, TypedAction<Self> typedAction, Function1<? super S, Boolean> function1, Continuation<? super Unit> continuation) {
            StateActor<Self, S> actor = storeContext.getActor();
            Intrinsics.checkNotNull(storeContext, "null cannot be cast to non-null type Self of com.superwall.sdk.misc.primitives.StoreContext");
            Object objImmediateUntil = actor.immediateUntil(storeContext, typedAction, function1, continuation);
            return objImmediateUntil == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objImmediateUntil : Unit.INSTANCE;
        }

        public static <S, Self extends StoreContext<S, Self>> void sideEffect(StoreContext<S, Self> storeContext, Function1<? super Continuation<? super Unit>, ? extends Object> what) {
            Intrinsics.checkNotNullParameter(what, "what");
            BuildersKt__Builders_commonKt.launch$default(storeContext.getScope(), null, null, new AnonymousClass1(what, null), 3, null);
        }
    }

    /* JADX INFO: renamed from: com.superwall.sdk.misc.primitives.StoreContext$sideEffect$1, reason: invalid class name */
    /* JADX INFO: compiled from: StoreContext.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.superwall.sdk.misc.primitives.StoreContext$sideEffect$1", f = "StoreContext.kt", i = {}, l = {52}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<Continuation<? super Unit>, Object> $what;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Function1<? super Continuation<? super Unit>, ? extends Object> function1, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$what = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$what, continuation);
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
                Function1<Continuation<? super Unit>, Object> function1 = this.$what;
                this.label = 1;
                if (function1.invoke(this) == coroutine_suspended) {
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
